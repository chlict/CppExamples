#include <type_traits>
#include <cstdio>

template <int i>
constexpr std::integral_constant<int, i> int_c{};
int main() {
    using one = std::integral_constant<int, 1>;
    printf("one: %d\n", one::value);
    auto two = int_c<2>;
}

