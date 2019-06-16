#include <cstdio>
#include <iostream>
#include <type_traits>
#include <boost/hana.hpp>
#include <cassert>
#include "../Utils.hpp"

using namespace boost;

template <int i>
using ConstInt = boost::hana::integral_constant<int, i>;

template <int i>
constexpr ConstInt<i> int_c {};

// Types other than ConstInt, including int and const int, are
// not ConstInt.
template <typename T>
struct IsConstInt {
    static constexpr bool value = false;
};

template <int i>
struct IsConstInt<ConstInt<i>> {
    static constexpr bool value = true;
};

template <class ... T>
class DimN {
public:
    const boost::hana::tuple<T...> tpl;
    static constexpr auto nDims = sizeof...(T);
public:
    DimN(T... args) : tpl(args...) {}

    DimN(hana::tuple<T...> tpl) : tpl(tpl) {}

    template <int i>
    auto get() {
        static_assert(i < nDims, "bounds check");
        return tpl[int_c<i>];
    }
    
    template <class ... T2>
    auto operator+ (DimN<T2...> other) {
        return boost::hana::zip_with(boost::hana::mult, tpl, other.tpl);
    }
};

template <class ... T>
class Dim1 : public DimN<T...> {
    static_assert(sizeof...(T) == 1);
public:
    Dim1(T... args) : DimN<T...>(args...) {}
};

template <class ... T>
class Dim2 : public DimN<T...> {
    static_assert(sizeof...(T) == 2);
public:
    Dim2(T... args) : DimN<T...>(args...) {}
    Dim2(hana::tuple)
};

void TestDim1(int v) {
    auto x1 = Dim1{v};
    printf("x1.get<0>() = %d\n", x1.get<0>());
    auto x2 = Dim1{1};
    printf("x2.get<0>() = %d\n", x2.get<0>());
    assert(x2.get<0>() == 1);
    auto x3 = Dim1{int_c<2>};
    printf("x3.get<0>() = %d\n", (int)x3.get<0>());
    PrintTypeName(x3.get<0>());
    // static_assert(x3.get<0>() == int_c<2>);  // compile fail
    BOOST_HANA_CONSTANT_ASSERT(x3.get<0>() == int_c<2>);
    static_assert(x3.tpl[int_c<0>] == int_c<2>);
    // if constexpr (x3.get<0>() == int_c<2>) {}
    if constexpr (x3.tpl[int_c<0>] == int_c<2>) {}
    if constexpr (int_c<1> == int_c<1>) {}
    // boost::hana::at(x3.tpl, int_c<0>);
    if (x1.tpl[int_c<0>] == 0) {}

    auto x4 = x3 + x3;
    // printf("x4 = %d\n", (int)x4.tpl[0]);
    PrintTypeName(x4);
}

void TestDim2(int var) {
    auto x = Dim2{int_c<1>, int_c<2>};
    auto y = Dim2{int_c<3>, int_c<4>};
    auto z = x + y;
    PrintTypeName(z);
    auto x2 = DimN{z};
    PrintTypeName(x2);
}
int main() {
    TestDim1(0);
    TestDim2(0);
}