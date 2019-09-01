#include "A.hpp"

extern A foo();

int main() {
    // printf("auto a1 = A()\n");
    auto a1 = A();

    // printf("\nauto a2 = foo()\n");
    // auto a2 = foo();

    // printf("\na1 = foo()\n");
    a1 = foo();
    // a1.Println();
}