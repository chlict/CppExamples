struct A;
struct B;

template <typename T>
constexpr int Fun = 0;

template <>
constexpr int Fun<A> = 1;

template <>
constexpr int Fun<B> = 2;

int main() {
    return Fun<A>;
}
