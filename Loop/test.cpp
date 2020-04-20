#include <type_traits>
#include <iostream>

template <typename ...T>
struct all_integral_t;

template <typename T>
struct all_integral_t<T> {
    static constexpr bool value = std::is_integral<T>::value;
};

template <typename H, typename ...T>
struct all_integral_t<H, T...> {
    static constexpr bool value = std::is_integral<H>::value && all_integral_t<T...>::value;
};

int main() {
    std::cout << all_integral_t<int>::value << std::endl;
    std::cout << all_integral_t<int, short, long>::value << std::endl;
    std::cout << all_integral_t<int, float>::value << std::endl;
    std::cout << all_integral_t<char, double, float>::value << std::endl;
}
