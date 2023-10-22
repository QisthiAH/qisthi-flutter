part of '_index.dart';

class ProductListView extends StatelessWidget {
  const ProductListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(56),
        child: ProductListAppbar(),
      ),
      floatingActionButton: const ProductListFab(),
      body: OnBuilder.data(
        listenTo: _dt.rxProductList,
        builder: (data) => ListView(
          children: [
            ...List.generate(
              data.length,
              (index) => Card(
                child: ListTile(
                  title: Text(data[index].name),
                  subtitle: Text('RP ${Fun.formatRupiah.format(data[index].price)}'),
                  onTap: () => _ct.select(data[index].id),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
