#include <boost/hana.hpp>

using namespace boost::hana::literals;

template <typename T>
class X {
public:
    T data;

    constexpr explicit X(T x) : data(x) {}

    constexpr T getData() {
        return data;
    }
};


int main() {
    {   // test1
        auto x1 = X(1_c);
        static_assert(x1.data == 1_c);
        static_assert(x1.getData() == 1_c);
    }
    {   //test2
        auto x2 = X(boost::hana::make_tuple(1_c, 2_c));
        static_assert(x2.data[0_c] == 1_c);

        // static_assert(x2.getData()[0_c] == 1_c); // read of non-constexpr variable 'x2' is not allowed in a constant expression

        auto data = x2.getData();
        static_assert(data[0_c] == 1_c);
    }
}