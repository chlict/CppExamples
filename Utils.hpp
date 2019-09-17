#pragma once

#include <cstdio>
#include <cstdlib>
#include <cxxabi.h>
#include <typeinfo>

template <typename T>
void PrintTypeName(T t) {
    char *name = abi::__cxa_demangle(typeid(T).name(), 0, 0, nullptr);
    printf("Type: %s\n", name);
    free(name);
}

template <typename T>
void PrintTypeName() {
    char *name = abi::__cxa_demangle(typeid(T).name(), 0, 0, nullptr);
    printf("Type: %s\n", name);
    free(name);
}

