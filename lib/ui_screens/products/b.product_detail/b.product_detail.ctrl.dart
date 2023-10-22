part of '_index.dart';

class ProductDetailCtrl {
  init() => logxx.i(ProductDetailCtrl, '...');

  action() => _dt.rxInt.setState((s) => s + 1);

  Product readProductDetail() {
    final index = _dt.rxProductList.st.indexWhere((element) => element.id == _dt.rxSelectedId.st);
    return _dt.rxProductList.st[index];
  }

  getProductDetail() {
    _dt.rxProduct.st = readProductDetail();
  }

  removeById() {
    _dt.rxProductList.st = [..._dt.rxProductList.st]..removeWhere((element) => element.id == _dt.rxProduct.st?.id);
    nav.back();
    nav.back();
  }
}
