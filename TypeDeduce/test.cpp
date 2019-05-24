#include <type_traits>
#include <typeinfo>
#include <cstdio>

template <typename T1, typename T2>
class A {
public:
    A(T1 t1, T2 t2): t1(t1), t2(t2) {
        printf("T1: %s, T2: %s\n", typeid(T1).name(), typeid(T2).name());
    }
private:
    T1 t1;
    T2 t2;
};

template <typename T1>
class A<T1, int> {
public:
    A(T1 t1, int t2) {
        printf("T1: %s, T2 specialized to int\n", typeid(T1).name());
    }
};

int main() {
    auto a1 = A(1, 2);
    auto a2 = A(1u, 2u);
}
