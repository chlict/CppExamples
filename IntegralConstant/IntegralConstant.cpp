#include <type_traits>
#include <cstdio>

template <class T, T v>
struct integral_constant
{
    static const T      value = v;
    typedef T           value_type;
    typedef integral_constant type;
};

template <typename T, T v>
using IC = integral_constant<T, v>;

static_assert(IC<int, 1>::value == 1);
static_assert(std::is_same_v<IC<int, 1>::value_type, int>);

template <typename T1, typename T2>
struct plus {
    static_assert(std::is_same_v<typename T1::value_type, typename T2::value_type>);
    using value_type = typename T1::value_type;
    using type = IC<value_type, T1::value + T2::value>;
};

auto foo() {
    using one_t = IC<int, 1>;
    using two_t = IC<int, 2>;
    using three_t = plus<one_t, two_t>::type;

    static_assert(three_t::value == 3);
    static_assert(std::is_same_v<three_t, IC<int, 3> >);
}

template <typename T1, typename T2>
auto plus2(T1 const& t1, T2 const& t2) {
    static_assert(std::is_same_v<typename T1::value_type, typename T2::value_type>);
    using value_type = typename T1::value_type;
    using type = IC<value_type, T1::value + T2::value>;
    return type();
}

auto foo2() {
    auto one = IC<int, 1>();
    auto two = IC<int, 2>();
    auto three = plus2(one, two);

    static_assert(three.value == 3);
    static_assert(std::is_same_v<decltype(three), IC<int, 3> >);
}

template <int i>
constexpr IC<int, i> int_c{};
int main() {
    using one = IC<int, 1>;
    printf("one: %d\n", one::value);
    auto two = int_c<2>;
}

