part of '_index.dart';

class ProductDetailView extends StatelessWidget {
  const ProductDetailView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(56),
        child: ProductDetailAppbar(),
      ),
      floatingActionButton: const ProductDetailFab(),
      body: OnBuilder.data(
        listenTo: _dt.rxProduct,
        builder: (data) => Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('ID : ${data?.id}'),
              Text('PRDDUCT : ${data?.name}'),
              Text('PRICE : ${Fun.formatRupiah.format(data?.price)}'),
              Text('TOTAL : ${data?.quantity}'),
              Text('CREATED : ${data?.createdAt}'),
            ],
          ),
        ),
      ),
    );
  }
}
