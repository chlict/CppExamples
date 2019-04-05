#include <cstdio>

template <int... empty>
constexpr int Accumulate = 0;

template <int first, int... others>
constexpr int Accumulate<first, others...> = first + Accumulate<others...>;

template <int... values>
constexpr int Sum = (0 + ... + values);

int main() {
	printf("%d\n", Accumulate<1,2,3>);
	printf("%d\n", Sum<1,2,3>);
}

