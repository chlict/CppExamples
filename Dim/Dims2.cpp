#include <cstdio>
#include <iostream>
#include <type_traits>
#include <boost/hana.hpp>
#include <cassert>
#include "../Utils.hpp"

using namespace boost;
using namespace boost::hana::literals;

// template <class... T>
// auto MakeDims(boost::hana::tuple<T...> tpl);

template <typename... T>
using Dims = hana::tuple<T...>;

constexpr auto MakeDims = [](auto const & ...xs) {
    return hana::tuple<std::decay_t<decltype(xs)>...>(xs...);
};

void Test1() {
    auto dim0 = MakeDims(1, 2); // compile error
    std::cout << dim0[0_c] << std::endl;
}

int main() {
    Test1();
}
