#include <iostream>
#include "cxxabi.h"

typedef float Half;
typedef uintptr_t Address;

void Indent(int n_spaces) {
    for (int i = 0; i < n_spaces; i++) {
        printf("%c", ' ');
    }
}

enum ExprOp {
    Constant, Var, Neg, Add
};

template <typename Expr>
constexpr bool isConstant() {
    return Expr::op == Constant;
}

template <typename Expr>
constexpr bool isVar() {
    return Expr::op == Var;
}

template <typename Expr>
constexpr bool isUnary() {
    return Expr::op == Neg;
}

template <typename Expr>
constexpr bool isBinary() {
    return Expr::op == Add;
}

template <typename Expr>
struct ExprBase {
    using ExprType = Expr;
    static constexpr ExprOp op = Expr::op;

    // downcast
    const Expr& getWrappedExpr() const {
        return static_cast<const Expr &>(*this);
    }

    virtual ~ExprBase() {}
};

template <typename FpType, int Integral, int Fractional>
struct FloatingPointConstant
    : public ExprBase<FloatingPointConstant<FpType, Integral, Fractional>> {
    static constexpr ExprOp op = ExprOp::Constant;
    using fptype = FpType;
    static constexpr auto integral = Integral;
    static constexpr auto fractional = Fractional;

    constexpr float IntegralValue() const {
        return (float)integral;
    }

    constexpr float FractionalValue() const {
        float f = fractional;
        while (f > 1.0) {
            f = f / 10;
        }
        return f;
    }

    constexpr FpType value() const {
        return (FpType)(IntegralValue() + FractionalValue());
    }

    void dump(int indent = 0) const {
        Indent(indent);
        printf("i: %d, f: %d, value: %f\n", integral, fractional, value());
    }
};

template <typename VarType>
struct VarExpr: public ExprBase<VarExpr<VarType>> {
    static constexpr ExprOp op = ExprOp::Var;
    const Address address;
    VarExpr(Address addr) : address(addr) {}
    void dump(int indent = 0) const {
        Indent(indent);
        printf("var: 0x%lx\n", address);
    }
};

template <ExprOp Op, typename SubExpr>
struct UnaryExpr: public ExprBase<UnaryExpr<Op, SubExpr>> {
    static constexpr ExprOp op = Op;
    using OpndType = SubExpr;
    const OpndType &opnd;

    UnaryExpr(const SubExpr &expr) : opnd(expr) {}

    void dump(int indent = 0) const {
        Indent(indent);
        printf("Unary<%d>:\n", (int)op);
        opnd.dump(indent + 4);
    }
};

template <ExprOp Op, typename LeftExpr, typename RightExpr>
struct BinaryExpr: public ExprBase<BinaryExpr<Op, LeftExpr, RightExpr>> {
    static constexpr ExprOp op = Op;
    using LeftOpndTyep = LeftExpr;
    using RightOpndType = RightExpr;
    const LeftExpr &left;
    const RightExpr &right;

    BinaryExpr(const LeftExpr &left, const RightExpr &right)
        : left(left), right(right) {}

    void dump(int indent = 0) const {
#ifdef Debug
        Indent(indent);
        printf("Binary<%d>\n", (int)op);
        left.dump(indent + 4);
        right.dump(indent + 4);
#endif
    }
};

template <typename Expr>
struct Evaluator {
    const ExprBase<Expr> &baseExpr;

    Evaluator(const Expr &expr): baseExpr(expr) {
#ifdef Debug
        char *name = abi::__cxa_demangle(typeid(Expr).name(), 0, 0, nullptr);
        printf("Constructing evaluator for type %s\n", name);
        free(name);
#endif
    }

    void Eval() const {
        if constexpr (isBinary<Expr>()) {
            auto binaryExpr = baseExpr.getWrappedExpr();
            auto leftEval = Evaluator<typename decltype(binaryExpr)::LeftOpndTyep>(binaryExpr.left);
            auto rightEval = Evaluator<typename decltype(binaryExpr)::RightOpndType>(binaryExpr.right);
            leftEval.Eval();
            rightEval.Eval();
        }
        if constexpr (isUnary<Expr>()) {
            auto unaryExpr = baseExpr.getWrappedExpr();
            using OpndType = typename decltype(unaryExpr)::OpndType;
            auto subEval = Evaluator<OpndType>(unaryExpr.opnd);
            subEval.Eval();
        }
        if constexpr (isVar<Expr>()) {
            auto varExpr = baseExpr.getWrappedExpr();
            varExpr.dump();
        }
        if constexpr (isConstant<Expr>()) {
            auto constExpr = baseExpr.getWrappedExpr();
            constExpr.dump();
        }
    }
};