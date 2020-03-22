#include <iostream>

class Base {
public:
    virtual void foo() {
        std::cout << "Base::foo()" << std::endl;
    }
};

class Derived : public Base {
public:
    void foo() override {
        std::cout << "Derived::foo()" << std::endl;
    }
};

void Dispatch(Base &p) {
    p.foo();
}

int main() {
    auto base = Base();
    auto derived = Derived();

    Dispatch(base);
    Dispatch(derived);
}