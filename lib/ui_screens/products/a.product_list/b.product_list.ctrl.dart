part of '_index.dart';

class ProductListCtrl {
  init() => logxx.i(ProductListCtrl, '...');

  action() => _dt.rxInt.setState((s) => s + 1);

  List<Product> readAllProduct() {
    List<Product> products = [];
    products.add(Product.init());
    return products;
  }

  getAllProduct() {
    _dt.rxProductList.st = readAllProduct();
  }

  setSelectedId(String id) {
    _dt.rxSelectedId.st = id;
  }

  select(String id) {
    setSelectedId(id);
    nav.to(Routes.productDetail);
  }

  removeById(String id) {
    _dt.rxProductList.st = [..._dt.rxProductList.st]..removeWhere((element) => element.id == id);
  }

  deleteAllProduct() {
    for (var product in _dt.rxProductList.st) {
      removeById(product.id);
      nav.back();
      nav.back();
    }
  }
}
