#include "A.hpp"
#include <type_traits>
#include "Utils.hpp"

extern A foo();

template <typename T>
auto PrintParamType2(T&& t) {
    if constexpr (std::is_same<T, A>::value) {
        printf("A\n");
    } else if constexpr (std::is_same<T, A&>::value) {
        printf("A&\n");
    } else if constexpr (std::is_same<T, const A&>::value) {
        printf("const A&\n");
    } else if constexpr (std::is_same<T, A&&>::value) {
        printf("A&&\n");
    } else {
        printf("?\n");
    }

    printf("t(%p) = ", &t);
    if constexpr (std::is_same<decltype(t), A>::value) {
        printf("A\n");
    } else if constexpr (std::is_same<decltype(t), A&>::value) {
        printf("A&\n");
    } else if constexpr (std::is_same<decltype(t), const A&>::value) {
        printf("const A&\n");
    } else if constexpr (std::is_same<decltype(t), A&&>::value) {
        printf("A&&\n");
    } else {
        printf("?\n");
    }
}

template <typename T>
auto PrintParamType1(T&& t) {
    printf("T = ");
    if constexpr (std::is_same<T, A>::value) {
        printf("A\n");
    } else if constexpr (std::is_same<T, A&>::value) {
        printf("A&\n");
    } else if constexpr (std::is_same<T, const A&>::value) {
        printf("const A&\n");
    } else if constexpr (std::is_same<T, A&&>::value) {
        printf("A&&\n");
    } else {
        printf("?\n");
    }
    printf("t(%p) = ", &t);
    // PrintTypeName(t);
    if constexpr (std::is_same<decltype(t), A>::value) {
        printf("A\n");
    } else if constexpr (std::is_same<decltype(t), A&>::value) {
        printf("A&\n");
    } else if constexpr (std::is_same<decltype(t), const A&>::value) {
        printf("const A&\n");
    } else if constexpr (std::is_same<decltype(t), A&&>::value) {
        printf("A&&\n");
    } else {
        printf("?\n");
    }

    printf("std::forward<T>   = ");
    PrintParamType2(std::forward<T>(t));
    using T1 = decltype(std::forward<T>(t));
    using T2 = decltype(std::forward<T&&>(t));
    static_assert(std::is_same<T1, T2>::value);
}

int main() {
    A a1;
    A &a2 = a1;
    A const &a3 = a1;
    printf("A a1:\n");
    PrintParamType1(a1);

    printf("\nA &a2 = a1\n");
    PrintParamType1(a2);

    printf("\nA const &a3 = a1\n");
    PrintParamType1(a3);

    printf("\nfoo()\n");
    PrintParamType1(foo());
}