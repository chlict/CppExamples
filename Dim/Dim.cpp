#include <cstdio>

template <int N>
struct Dim1 {
    constexpr static int n_dims = 1;
    constexpr static int d0 = N; 
};

template <int N1, int N2>
struct Dim2 {
    constexpr static int n_dims = 2;
    constexpr static int d0 = N1;
    constexpr static int d1 = N2;

    template <int I>
    constexpr int get() {
        static_assert(I == 0 || I == 1, "check");
        if constexpr (I == 0)
           return d0;
        if constexpr (I == 1)
           return N2;
    }
};

struct Dim3 {
    const int x;
    Dim3(const int i): x(i) {}
};

int main() {
    printf("%d\n", Dim1<10>::d0);
    printf("%d, %d\n", Dim2<10, 20>::d0, Dim2<10, 20>::d1);
    auto dim2 = Dim2<10, 20>();
    printf("%d, %d, %d\n", decltype(dim2)::n_dims, decltype(dim2)::d0, decltype(dim2)::d1);
    printf("%d, %d\n", dim2.get<0>(), dim2.get<1>());
    auto dim3 = Dim3(10);
    return 0;
}
