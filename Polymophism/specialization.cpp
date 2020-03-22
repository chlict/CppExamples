#include <iostream>

struct Rect;
struct Circle;
struct Unknown;

template <typename Tag>
struct Drawer {
    template <typename View>
    void draw(View &&view) const = delete;
};

template <>
struct Drawer<Rect> {
    template <typename View>
    void draw(View &&view) const {
        std::cout << "Draw " << view << std::endl;
    }
};

template <>
struct Drawer<Circle> {
    template <typename View>
    void draw(View &&view) const {
        std::cout << "Draw " << view << std::endl;
    }
};

template <typename Drawer, typename View>
void Dispatch(View &&view, Drawer &&drawer) {
    drawer.draw(view);
}

template <typename Tag>
Drawer<Tag> drawer{};

int main() {
    Dispatch("rect", drawer<Rect>);
    Dispatch("circle", drawer<Circle>);
    // Dispatch("unknown", drawer<Unknown>);
}