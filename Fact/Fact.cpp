#include <iostream>

template <int N>
constexpr int fact1 = N * fact1<N - 1>;

template <>
constexpr int fact1<0> = 1;

constexpr int fact2(int n) {
	int result = 1;
	for (int i = 1; i <= n; i++) {
		// printf("fact2: i = %d\n", i);  // ok - runtime execution
		result *= i;
	}
	return result;
}

constexpr int fact3(int n) {
	// printf("fact3(%d)\n", n);  // fail: compile error
	return n < 1 ? 1 : n * fact3(n - 1);
}

int main() {
	printf("fact1<3> = %d\n", fact1<3>);
	printf("fact2(3) = %d\n", fact2(3));
	printf("fact3(3) = %d\n", fact3(3));
}