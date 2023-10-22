part of '_index.dart';

class ProductDetailData {
  final rxTitle = 'ProductDetail'.inj();

  final rxInt = 0.inj();

  final rxProduct = RM.inject<Product?>(
    () => null,
    sideEffects: SideEffects(
      initState: () => _ct.getProductDetail(),
    ),
  );

  final rxProductList = Data.productList.st.rxProductList;

  final rxSelectedId = Data.productList.st.rxSelectedId;
}
