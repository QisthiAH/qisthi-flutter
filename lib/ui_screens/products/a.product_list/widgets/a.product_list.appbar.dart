part of '../_index.dart';

class ProductListAppbar extends StatelessWidget {
  const ProductListAppbar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: OnReactive(() => Text(_dt.rxTitle.st)),
      actions: [
        OnReactive(
          () => IconButton(
            onPressed: _dt.rxProductList.st.isEmpty
                ? null
                : () => nav.toCupertinoDialog(
                      CupertinoAlertDialog(
                        title: const Text('Confirmation'),
                        content: const Text('Are you sure to delete?'),
                        actions: [
                          CupertinoDialogAction(
                            child: const Text('Cancel'),
                            onPressed: () => nav.back(),
                          ),
                          CupertinoDialogAction(
                            onPressed: () => _ct.deleteAllProduct(),
                            isDefaultAction: true,
                            isDestructiveAction: true,
                            child: const Text('delete'),
                          ),
                        ],
                      ),
                    ),
            icon: const Icon(Icons.delete),
          ),
        ),
      ],
    );
  }
}
