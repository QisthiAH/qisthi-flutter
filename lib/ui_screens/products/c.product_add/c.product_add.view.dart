part of '_index.dart';

class ProductAddView extends StatelessWidget {
  const ProductAddView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(56),
        child: ProductAddAppbar(),
      ),
      floatingActionButton: const ProductAddFab(),
      body: Center(
        child: Container(
          constraints: const BoxConstraints(maxWidth: 1000),
          padding: const EdgeInsets.all(10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              OnFormBuilder(
                listenTo: _dt.rxForm,
                builder: () => TextField(
                  // onEditingComplete: _dt.rxPrice.focusNode.requestFocus(),
                  focusNode: _dt.rxProductName.focusNode,
                  controller: _dt.rxProductName.controller,
                  decoration: InputDecoration(
                    hintText: 'input your product name',
                    label: const Text('product name'),
                    errorText: _dt.rxProductName.error,
                  ),
                ),
              ),
              const SizedBox(height: 20),
              OnFormBuilder(
                listenTo: _dt.rxForm,
                builder: () => TextField(
                  // onEditingComplete: _dt.rxQuantity.focusNode.requestFocus(),
                  focusNode: _dt.rxPrice.focusNode,
                  controller: _dt.rxPrice.controller,
                  decoration: InputDecoration(
                    hintText: 'input your price',
                    label: const Text('price'),
                    errorText: _dt.rxPrice.error,
                  ),
                ),
              ),
              const SizedBox(height: 20),
              OnFormBuilder(
                listenTo: _dt.rxForm,
                builder: () => TextField(
                  // onEditingComplete: _dt.rxQuantity.focusNode.requestFocus(),
                  focusNode: _dt.rxQuantity.focusNode,
                  controller: _dt.rxQuantity.controller,
                  decoration: InputDecoration(
                    hintText: 'input your quantity',
                    label: const Text('quantity'),
                    errorText: _dt.rxQuantity.error,
                  ),
                ),
              ),
              const SizedBox(height: 20),
              OnFormBuilder(
                listenTo: _dt.rxForm,
                builder: () => ElevatedButton(
                  onPressed: () => _ct.submit(),
                  child: const Text(
                    "submit",
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
