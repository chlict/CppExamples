#include <cstdio>
#include <typeinfo>

template <typename T>
struct Base {
	void Foo() {
		T *instance = static_cast<T *>(this);
		instance->doFoo();
	}
};

template <typename T>
struct Derived : Base<Derived<T>> {
	void doFoo() {
		printf("Derived<%s>::doFoo()\n", typeid(T).name());
	}
};

int main() {
	Derived<int> d;
	d.Foo();

	Base<Derived<float>> *b = new Derived<float>();
	b->Foo();

	printf("sizeof(d) = %lu, sizeof(*b) = %lu\n", sizeof(d), sizeof(*b));
}
