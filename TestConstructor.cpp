#include <iostream>
#include "A.hpp"
#include "Utils.hpp"

using namespace std;

extern void f1_by_val(A);
extern void f2_by_ref(const A&);
extern void f2_by_ref(A&&);
extern A f3(const A&);
extern A f4();

int main() {
    long rsp = 0L, rbp = 0L;
    __asm__ ("movq %%rsp, %0; movq %%rbp, %1;":"=m"(rsp),"=m"(rbp)::"memory");
    printf("main: rsp = 0x%lx, rbp = 0x%lx\n", rsp, rbp);

    cout << "Test A a1: Default constructor?\n";
    A a1;
    cout << "\nTest a1 = A(1): Constructor with parm followed by copy assignment?\n";
    a1 = A(1);

    cout << "\nTest auto a2 = A(1): Only the constructor with parm?\n";
    auto a2 = A(1);

    cout << "\nTest A a4 = A(4): Copy constructor?\n";
    A a4 = A(4);

    cout << "\nTest f1_by_val(a2): Copy constructor passing as parameters?\n";
    f1_by_val(a2);

    cout << "\nTest f1_by_val(A(2)): Constructor followed by copy constructor? -- note\n";
    f1_by_val(A(2));// no copy constructor

    cout << "\nTest f2_by_ref(a2): no copy constructor passing as parameters?\n";
    f2_by_ref(a2);

    cout << "\nTest f2_by_ref(A(2)): Only onstructor? -- note\n";
    f2_by_ref(A(2));

    cout << "\nTest auto a3 = f3(a2): Copy constructor?\n";
    auto a3 = f3(a2);
    // a3.PrintLn();

    cout << "\nTest a1 = f3(a2): Copy assignment? -- note\n";
    a1 = f3(a2); // copy constructor + copy assignment
    printf("a2: "); a2.PrintLn();
    printf("a1: "); a1.PrintLn();

    cout << "\nTest auto a5 = f4(): Copy constructor? -- no\n";
    auto a5 = f4();
    // a5.PrintLn();

    cout << "\nTest a5 = f4(): Copy constructor? -- no\n";
    a5 = f4();
    // a5.PrintLn();
}
