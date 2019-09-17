all: foo.o test

foo.o: foo.cpp A.hpp
	c++ -std=c++17 foo.cpp -c -O2 -o foo.o

test: test.cpp A.hpp foo.o
	c++ -std=c++17 test.cpp -I../ -O2 foo.o

clean:
	rm *.o a.out
