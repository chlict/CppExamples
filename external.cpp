#include "A.hpp"
#include <cstdio>

void f1_by_val(A a) {
    // printf("lvalue as parameter\n");
}

void f2_by_ref(const A &a) {
    printf("const lvalue ref as parameter\n");
}

void f2_by_ref(A &&a) {
    printf("rvalue ref as parameter\n");
}

A f3(const A &a) {
    printf("[Enter f3]:\n");
    long rsp = 0L, rbp = 0L;
    __asm__ ("movq %%rsp, %0; movq %%rbp, %1;":"=m"(rsp),"=m"(rbp)::"memory");
    // printf("rsp = 0x%lx, rbp = 0x%lx\n", rsp, rbp);
    bool inside = ((unsigned long)&a >= rsp && (unsigned long)&a < rbp);
    printf(" -- %s\n", inside ? "inside" : "outside");
    // a.PrintLn();
    return a;
}

A f4() {
    auto a = A(5);
    printf("[Enter f4]:\n");
    unsigned long rsp = 0L, rbp = 0L;
    __asm__ ("movq %%rsp, %0; movq %%rbp, %1;":"=m"(rsp),"=m"(rbp)::"memory");
    // printf("rsp = 0x%lx, rbp = 0x%lx\n", rsp, rbp);
    bool inside = ((unsigned long)&a >= rsp && (unsigned long)&a < rbp);
    printf(" -- %s\n", inside ? "inside" : "outside");
    // a.PrintLn();
    return a;
}
