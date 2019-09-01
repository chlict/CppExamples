#pragma once

#include <cstdio>

class A {
public:
    int data;

    A() : data(0) {
        printf("Constructing A on %p\n", this);
    }

    A(const A &other) {
        printf("Copy constructor called: copying from %p to %p\n", &other, this);
    }

    A(A&& other) {
        printf("Move constructor called: moving from %p to %p\n", &other, this);
    }

    A operator=(const A &other) {
        printf("Copy assignment called: assigning from %p to %p\n", &other, this);
        data = other.data;
        return *this;
    }

    A operator=(A&& other) {
        printf("Move assignment called: moving from %p to %p\n", &other, this);
        data = other.data;
        return *this;
    }

    ~A() {
        printf("Destructing %p\n", this);
    }

    void Println() {
        printf("A[%p]: data = %d\n", this, data);
    }
};