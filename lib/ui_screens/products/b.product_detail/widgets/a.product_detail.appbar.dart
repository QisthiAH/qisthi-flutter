part of '../_index.dart';

class ProductDetailAppbar extends StatelessWidget {
  const ProductDetailAppbar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: OnReactive(() => Text(_dt.rxTitle.st)),
      actions: [
        IconButton(
          onPressed: () => nav.toCupertinoDialog(
            CupertinoAlertDialog(
              title: const Text('Confirmation'),
              content: const Text('Are you sure to delelte?'),
              actions: [
                CupertinoDialogAction(
                  child: const Text('cancel'),
                  onPressed: () => nav.back(),
                ),
                CupertinoDialogAction(
                  child: const Text('delete'),
                  onPressed: () => _ct.removeById(),
                ),
              ],
            ),
          ),
          icon: const Icon(Icons.delete),
        ),
      ],
    );
  }
}
