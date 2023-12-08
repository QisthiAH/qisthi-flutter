part of '_index.dart';

class ProductEditCtrl {
  init() => logxx.i(ProductEditCtrl, '...');

  action() => _dt.rxInt.setState((s) => s + 1);

  editProduct() {
    final newProduct = Product(
      id: _dt.rxSelectedId.st,
      name: _dt.rxProductName.st.value,
      price: int.parse(_dt.rxPrice.st.value),
      quantity: int.parse(_dt.rxQuantity.st.value),
      createdAt: DateTime.now().toString(),
      updatedAt: DateTime.now().toString(),
    );

    final index = _dt.rxProductList.st.indexWhere((element) => element.id == newProduct.id);
    _dt.rxProductList.setState((s) => s[index] = newProduct);

    logx.wtf(newProduct.toString());
    nav.back();
    nav.back();
    return _dt.rxProductList.st[index];
  }

  submitEdit() => _dt.rxForm.submit();
}
