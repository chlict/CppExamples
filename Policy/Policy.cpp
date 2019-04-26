#include <cstdio>
#include <typeinfo>

struct AccPolicy {
	struct AccuTypeCate {
		struct Add {};
		struct Mul {};
	};
	using AccuType = AccuTypeCate::Add;

	struct ValueTypeCate;
	using ValueType = float;
};

template <typename... TPolicies>
struct PolicyContainer;

struct AccAddPolicy : virtual public AccPolicy {};

struct AccMulPolicy : virtual public AccPolicy {
	using AccuType = AccuTypeCate::Mul;
};

struct AccFloatType : virtual public AccPolicy {};

struct AccDoubleType : virtual public AccPolicy {
	using ValueType = double;
};

int main() {
	printf("AccAddPolicy: %s\n", typeid(AccAddPolicy::AccuType).name());
	printf("AccMulPolicy: %s\n", typeid(AccMulPolicy::AccuType).name());
	printf("AccFloatType: %s, PolicyType: %s\n", 
		    typeid(AccFloatType::ValueType).name(), typeid(AccFloatType::AccuType).name());
	printf("AccDoubleType: %s\n", typeid(AccDoubleType::ValueType).name());
}