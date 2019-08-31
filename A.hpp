#pragma once

#include <iostream>
#include <cstdio>

using namespace std;

class A {
public:
    int m_a;
    A() {
        printf("Constructing %p\n", this);
    }

    A(int a) : m_a(a) {
        printf("Constructing %p with parm %d\n", this, a);
    }

    A(const A &other) {
        m_a = other.m_a + 1;
        printf("Copy constructor: &other = %p, other.a = %d, this = %p, this->a = %d\n",
               &other, other.m_a, this, this->m_a);
    }

    A& operator=(const A &other) {
        printf("Copy assignment: &other = %p, other.a = %d, this = %p, this->a = %d\n",
               &other, other.m_a, this, this->m_a);
        m_a = other.m_a;
        return *this;
    }

    A(A&& other) {
        m_a = other.m_a;
        printf("Move constructor: &other = %p, other.a = %d, this = %p, this->a = %d\n",
               &other, other.m_a, this, this->m_a);
    }

    A& operator=(A&& other) {
        m_a = other.m_a;
        printf("Move assignment: &other = %p, other.a = %d, this = %p, this->a = %d\n",
               &other, other.m_a, this, this->m_a);
        return *this;
    }

    void PrintLn() const {
        printf("this = %p, this->m_a = %d\n", this, m_a);
    }
};
