#include <iostream>

template <typename Derived>
struct LayoutProvider {
    template <typename View>
    constexpr auto operator()(View &&view) const {
        if constexpr (Derived::has_provider) {
            const Derived *derived = static_cast<const Derived *>(this);
            return (*derived)(view);
        }
    }
};

struct RowMajorLayout : LayoutProvider<RowMajorLayout> {
    static constexpr bool has_provider = true;
    template <typename View>
    constexpr auto operator()(View &&view) const {
        std::cout << "RowMajorProvider(view)" << std::endl;
        return view;
    }
};

template <typename View, typename Provider>
constexpr auto make_format(View view, LayoutProvider<Provider> const &layout_provider) {
    //auto layout = layout_provider(view);
    //return layout;
    static_assert(view == 1);
    return  view;
}

int main() {
    auto format = make_format(1, RowMajorLayout());
    static_assert(format == 1);
}