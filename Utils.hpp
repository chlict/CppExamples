#pragma once

#include <cstdio>
#include <cxxabi.h>

template <typename T>
void PrintTypeName(T t) {
    char *name = abi::__cxa_demangle(typeid(T).name(), 0, 0, nullptr);
    printf("Type: %s\n", name);
    free(name);
}

