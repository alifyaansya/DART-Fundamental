import 'package:flutter/material.dart';

class ImageWidget extends StatelessWidget {
  const ImageWidget({super.key});

@override
Widget build(BuildContext context) {
  return MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: const Text('Belajar Image'),
        backgroundColor: Colors.purpleAccent,
      ),
        body: Card(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.network(
                'https://picsum.photos/400/250',
                width: double.infinity,
                height: 200,
                fit: BoxFit.cover,
              ),

              SizedBox(height: 30),

              Image.asset(
                'assets/images/CB150R Streetfire.jpg',
                width: double.infinity,
                height: 230,
                fit: BoxFit.contain,
              ),

              Padding(
                padding: const EdgeInsets.all(16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Honda CB150R Streetfire',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),

                    SizedBox(height: 5),

                    Text('Rp 38.500.000'),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}