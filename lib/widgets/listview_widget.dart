import 'package:flutter/material.dart';

class ListViewWidget extends StatelessWidget {
  const ListViewWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            'Belajar ListView',
            style: TextStyle(color: Colors.white),
          ),
          backgroundColor: Colors.purpleAccent,
        ),
        body: ListView(
          padding: const EdgeInsets.all(16),
          children: const [
            ListTile(leading: Icon(Icons.list), title: Text('Item 1')),
            ListTile(leading: Icon(Icons.list), title: Text('Item 2')),
            ListTile(leading: Icon(Icons.list), title: Text('Item 3')),
            // TODO: lanjutkan contoh ListView lainnya di sini
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.pop(context);
          },
          backgroundColor: Colors.purpleAccent,
          child: const Icon(Icons.arrow_back, color: Colors.white),
        ),
      ),
    );
  }
}