OPT=-O2 -DDebug
all:
	clang++ ${OPT} -std=c++17 Expr.cpp -S -emit-llvm
	clang++ ${OPT} -std=c++17 Expr.cpp