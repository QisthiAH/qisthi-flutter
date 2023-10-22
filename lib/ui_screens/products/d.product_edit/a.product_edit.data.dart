part of '_index.dart';

class ProductEditData {
  final rxTitle = 'ProductEdit'.inj();

  final rxInt = 0.inj();

  final rxProductList = Data.productList.st.rxProductList;

  final rxProduct = Data.productDetail.st.rxProduct;

  final rxSelectedId = Data.productList.st.rxSelectedId;

  final rxForm = RM.injectForm(
    submit: () async => await _ct.editProduct(),
  );

  final rxProductName = RM.inject(
    () => RM.injectTextEditing(
      text: _dtFromDetail.rxProduct.st!.name,
      validators: [
        Validate.isNotEmpty,
      ],
    ),
  );

  final rxPrice = RM.inject(
    () => RM.injectTextEditing(
      text: _dt.rxProduct.st!.price.toString(),
      validators: [
        Validate.isNotEmpty,
        Validate.isNumeric,
      ],
    ),
  );

  final rxQuantity = RM.inject(
    () => RM.injectTextEditing(
      text: _dt.rxProduct.st!.quantity.toString(),
      validators: [
        Validate.isNotEmpty,
        Validate.isNumeric,
      ],
    ),
  );
}
