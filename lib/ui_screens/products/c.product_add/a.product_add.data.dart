part of '_index.dart';

class ProductAddData {
  final rxTitle = 'ProductAdd'.inj();

  final rxInt = 0.inj();

  final rxProductList = Data.productList.st.rxProductList;

  final rxProductName = RM.injectTextEditing(
    text: 'product 1',
    validators: [
      Validate.isNotEmpty,
    ],
  );

  final rxForm = RM.injectForm(
    submit: () async => await _ct.addProductList(),
  );

  final rxPrice = RM.injectTextEditing(
    text: 1000.toString(),
    validators: [
      Validate.isNotEmpty,
      Validate.isNumeric,
    ],
  );

  final rxQuantity = RM.injectTextEditing(
    text: 950.toString(),
    validators: [
      Validate.isNotEmpty,
      Validate.isNumeric,
    ],
  );
}
