#include "Expr.hpp"

int main() {
    auto num_1 = FloatingPointConstant<float, 1, 5>();
    num_1.dump();

    void *p = malloc(sizeof(int));
    auto var_1 = VarExpr<int>((uintptr_t)p);
    var_1.dump();

    auto compute_1 = UnaryExpr<ExprOp::Neg, decltype(var_1)>(var_1);
    compute_1.dump();

    auto compute_2 = UnaryExpr<Neg, decltype(num_1)>(num_1);
    compute_2.dump();

    auto compute_3 = BinaryExpr<Add, decltype(compute_2), decltype(var_1)>(compute_2, var_1);
    compute_3.dump();

    auto eval = Evaluator<decltype(num_1)>(num_1);
    eval.Eval();
    auto eval2 = Evaluator<decltype(var_1)>(var_1);
    eval2.Eval();
    auto eval3 = Evaluator<decltype(compute_1)>(compute_1);
    eval3.Eval();
    auto eval4 = Evaluator<decltype(compute_3)>(compute_3);
    eval4.Eval();
    // ExprBase<decltype(var_1)> &base = var_1;
    // ExprBase<decltype(compute_1)> &base2 = compute_1;
}
