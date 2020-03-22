#include <cstdio>
#include <iostream>
#include <type_traits>
#include <boost/hana.hpp>
#include <cassert>
#include "../Utils.hpp"

template <typename T>
class X {
public:
    constexpr X(T x) : mVar(x) {}

    template <typename T2>
    constexpr auto Calc(T2 y) const {
        return mVar + y;
    }

    T mVar;
};

void TestX() {
    auto constexpr x = X(1);
    static_assert(x.Calc(2) == 3);
    // x.mVar = 2;    // compile error
    {
        auto a = std::integral_constant<int, 1>{};
        auto b = std::integral_constant<int, 2>{};
        auto x2 = X(a);
        static_assert(x2.Calc(b) == 3);
        if constexpr (x2.Calc(b) == 3) {
            printf("constexpr ok\n");
        }
        PrintTypeName(x2.Calc(b));
    }

    {
        auto a = boost::hana::integral_constant<int, 1>{};
        auto b = boost::hana::integral_constant<int, 2>{};
        auto x2 = X(a);
        static_assert(x2.Calc(b) == 3);
        if constexpr (x2.Calc(b) == 3) {
            printf("constexpr ok\n");
        }
        PrintTypeName(x2.Calc(b));
    }
}

int main() {
    TestX();
}
