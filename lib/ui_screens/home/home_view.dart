part of '_index.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
      ),
      body: ListView(
        children: [
          Card(
            child: ListTile(
              title: const Text('Firebase'),
              onTap: () => nav.to(Routes.productList),
            ),
          ),
        ],
      ),
    );
  }
}
