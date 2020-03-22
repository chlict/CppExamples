#include <iostream>

struct RectDrawer{};
struct CircleDrawer{};
struct Unknown{};

// Compile error:  function template partial specialization is not allowed
//template <typename Drawer, typename View>
//auto draw(View &&view, Drawer &&drawer) {
//    std::cout << "Default draw" << std::endl;
//}
//
//template <typename View>
//auto draw<Rect>(View &&view) {
//    std::cout << "Draw rect" << std::endl;
//}

auto draw2 = [](auto &&view, auto &&drawer) {
    std::cout << "Devault drawing" << std::endl;
};

auto draw2 = [](auto &&view, RectDrawer &&drawer) {
    std::cout << "Draw rect" << std::endl;
};

template <typename View>
auto draw(View &&view, RectDrawer dummy) {
    std::cout << "Draw rect" << std::endl;
}

template <typename View>
auto draw(View &&view, CircleDrawer dummy) {
    std::cout << "Draw circle" << std::endl;
}

//template <typename View>
//auto Dispatch(View &&view) {
//    draw(view, View());
//}

int main() {
    draw("rect", RectDrawer());
    draw("circle", CircleDrawer());
}