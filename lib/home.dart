import 'package:flutter/material.dart';
import 'dart:html' as html;

class Home extends StatelessWidget {
  const Home({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xff96B6C5),
        title: const Center(child: Text('Qisthi')),
        actions: [
          Center(
            child: ElevatedButton(
              onPressed: () {
                html.window.open('https://github.com/QisthiAH/qisthi-flutter', 'new tab');
              },
              style: const ButtonStyle(
                backgroundColor: MaterialStatePropertyAll(Colors.white),
              ),
              child: const Text(
                "GitHub",
                style: TextStyle(color: Color(0xff96B6C5)),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
