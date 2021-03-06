#include <cstdio>
#include <iostream>
#include <tuple>
#include <type_traits>
#include <boost/hana.hpp>
#include <cassert>
#include "../Utils.hpp"

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

template <typename D0, typename D1>
struct Dim2 {
    const D0 d0;
    const D1 d1;
public:
    Dim2(D0 d0, D1 d1) : d0(d0), d1(d1) {}

    static constexpr int NDims() { return 2; }

    template <typename Y0, typename Y1>
    auto operator+ (Dim2<Y0, Y1> y) {
        auto v0 = d0 + y.d0;
        auto v1 = d1 + y.d1;
        return Dim2<decltype(v0), decltype(v1)>(v0, v1);
    }

    template <typename Y0, typename Y1>
    bool operator== (const Dim2<Y0, Y1> &other) {
        return (d0 == other.d0 && d1 == other.d1);
    }

    auto toTuple() {
        return std::make_tuple(d0, d1);
    }
};

template <typename D0, typename D1, typename D2, typename D3>
struct Dim4 {
    const D0 d0;
    const D1 d1;
    const D2 d2;
    const D3 d3;
public:
    Dim4(D0 d0, D1 d1, D2 d2, D3 d3) : d0(d0), d1(d1), d2(d2), d3(d3) {}

    static constexpr int NDims() { return 4; }

    template <typename Y0, typename Y1, typename Y2, typename Y3>
    auto operator+ (Dim4<Y0, Y1, Y2, Y3> y) {
        auto v0 = d0 + y.d0;
        auto v1 = d1 + y.d1;
        auto v2 = d2 + y.d2;
        auto v3 = d3 + y.d3;
        return Dim4<decltype(v0), decltype(v1), decltype(v2), decltype(v3)>(v0, v1, v2, v3);
    }

    template <typename Y0, typename Y1, typename Y2, typename Y3>
    bool operator== (const Dim4<Y0, Y1, Y2, Y3> &other) {
        return d0 == other.d0 && d1 == other.d1 && d2 == other.d2 && d3 == other.d3;
    }

    auto toTuple() {
        return std::make_tuple(d0, d1, d2, d3);
    }
};

template <int n, class ... T>
struct DimN {
    static_assert(n == sizeof...(T), "must match");
    boost::hana::tuple<T...> tpl;
public:
    DimN(T... args) : tpl(args...) {}

    static constexpr auto nDims = n;

    template <int i>
    auto get() {
        return tpl[int_c<i>];
    }
};

template <class ... T>
struct Dim1 : public DimN<1, T...> {
public:
    Dim1(T... args) : DimN<1, T...>(args...) {}
};

template <int i, typename Dims>
const auto get(Dims dims) {
    static_assert(i >= 0 && i < Dims::NDims(), "bounds check");
    auto values = dims.toTuple();
    return std::get<i>(values);
}

template <typename Dims, typename Strides>
struct Layout {
    Dims dims;
    Strides strides;

    Layout(Dims dims, Strides strides) :
        dims(dims), strides(strides) {}
};

template <typename Dims>
auto ComputeLayout(Dims dims) {
    auto plus = Dim2(int_c<1>, int_c<1>);
    auto strides = dims + plus;
    return Layout(dims, strides);
}

template <typename N, typename C, typename H, typename W>
struct NCHW {
    const Dim4<N, C, H, W> dim4;
public:
    NCHW(N n, C c, H h, W w) : dim4(n, c, h, w) {}

    auto GetN() { return get<0>(dim4); }
    auto GetC() { return get<1>(dim4); }
    auto GetH() { return get<2>(dim4); }
    auto GetW() { return get<3>(dim4); }
};

void TestDim2() {
    auto x = Dim2{int_c<1>, int_c<2>};
    auto y = Dim2{int_c<3>, int_c<4>};
    auto z = x + y;
    static_assert(z.d0 == int_c<4> && z.d1 == int_c<6>);
    assert((z == Dim2(int_c<4>, int_c<6>)));
    // PrintTypeName(z);
}

void TestDimN() {
    auto x = DimN<2, decltype(int_c<3>), decltype(int_c<4>)>(int_c<3>, int_c<4>);
    PrintTypeName(x);
    std::cout << x.get<0>() << ", " << x.get<1>() << std::endl;

    auto x2 = Dim1(int_c<1>);
    PrintTypeName(x2);
    std::cout << x2.get<0>() << std::endl;
}
void TestNchw() {
    auto nchw1 = NCHW{int_c<1>, int_c<2>, int_c<3>, int_c<4>};
    printf("n:%d, c:%d, h:%d, w:%d\n",
        (int)nchw1.GetN(), (int)nchw1.GetC(), (int)nchw1.GetH(), (int)nchw1.GetW());
    PrintTypeName(nchw1);

    auto nchw2 = NCHW(1, 2, 3, 4);
    PrintTypeName(nchw2);

    // auto nchw3 = nchw1 + nchw2;
    // PrintTypeName(nchw3);
}

int main() {
    auto x = Dim2{int_c<2>, int_c<4>};
    printf("d0 = %d, d1 = %d\n", (int)x.d0, (int)x.d1);
    auto y = ComputeLayout(x);
    int a[6] = {1, 2};
    printf("a[d0] = %d\n", a[get<0>(x)]);
    // printf("x.isConstexpr = %d, y.isConstexpr = %d\n", (int)x.isConstexpr, (int)y.isConstexpr);
    TestDim2();
    TestNchw();
    TestDimN();
}
