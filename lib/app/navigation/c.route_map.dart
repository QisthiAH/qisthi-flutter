part of '_index.dart';

class RouteMap {
  RouteMap._();

  static final data = {
    // Routes.root: (RouteData data) => const HomeView(),
    //* master -- ----- ----- ----- ----- -----

    Routes.home: (RouteData data) => const HomeView(),
    Routes.productList: (RouteData data) => const ProductListView(),
    Routes.productDetail: (RouteData data) => const ProductDetailView(),
    Routes.productAdd: (RouteData data) => const ProductAddView(),
    Routes.productEdit: (RouteData data) => const ProductEditView(),
  };
}
