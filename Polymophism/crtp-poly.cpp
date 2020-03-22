#include <iostream>

template <typename T>
struct Base {
    template <typename View>
    void draw(View &&view) const {
        if constexpr (T::drawable) {
            const T *derived = static_cast<const T *>(this);
            derived->draw(view);
        } else {
            this->draw_default(view);
        }
    }

    template <typename View>
    void draw_default(View &&view) const {
        std::cout << "Base::draw()" << std::endl;
    }
};

struct Derived1 : Base<Derived1> {
    static constexpr bool drawable = true;
    template <typename View>
    void draw(View &&view) const {
        std::cout << "Derived1::draw(view)" << std::endl;
    }
};

struct Derived2 : Base<Derived2> {
    static constexpr bool drawable = false;
};

template <typename T, typename View>
auto Dispatch(View &&view, Base<T> &&drawer) {
    drawer.draw(view);
}

int main() {
    auto view = "view";
    Dispatch(view, Derived1());
    Dispatch(view, Derived2());
}