//#include "../Utils.hpp"

template <typename T>
auto gen_fn1(T x1, T x2) {
    auto fn1 = [x1, x2]() {
        return x1 + x2;
    };
    return fn1;
}

template <typename T>
auto gen_fn2(T x1, T x2) {
    auto fn2 = [x1, x2]() {
        auto fn1 = gen_fn1(x1, x2);
        return fn1() * fn1();
    };
    return fn2;
}

int test_1() {
    auto fn2 = gen_fn2(1, 2);
    return fn2();
}

int main() {
    return test_1();
}
