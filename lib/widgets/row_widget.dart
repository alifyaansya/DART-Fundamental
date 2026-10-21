import 'package:flutter/material.dart';

class RowWidget extends StatelessWidget {
  const RowWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            'Belajar Row',
            style: TextStyle(color: Colors.white),
          ),
          backgroundColor: Colors.purpleAccent,
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // 1. Row Paling Sederhana
                const Text(
                  '1. Row Paling Sederhana',
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 10),
                const Row(
                  children: [
                    Text('Flutter'),
                    Text('Dart'),
                    Text('Mobile'),
                  ],
                ),
                const SizedBox(height: 20),

                // 2. Row Dengan Icon
                const Text(
                  '2. Row Dengan Icon',
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 10),
                const Row(
                  children: [
                    Icon(Icons.home),
                    Icon(Icons.search),
                    Icon(Icons.person),
                  ],
                ),
                const SizedBox(height: 20),

                // 3. Row Dengan Icon dan Text
                const Text(
                  '3. Row Dengan Icon dan Text',
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 10),
                const Row(
                  children: [
                    Icon(Icons.person),
                    Text('Alifya'),
                  ],
                ),
                const SizedBox(height: 20),

                // 4. Row Dengan SizeBox
                const Text(
                  '4. Row Dengan SizeBox',
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 10),
                const Row(
                  children: [
                    Icon(Icons.person),
                    SizedBox(width: 20),
                    Text('Alifya'),
                  ],
                ),
                const SizedBox(height: 20),

                // 5. Row Dengan mainAxisAlignment Start
                const Text(
                  '5. Row Dengan mainAxisAlignment Start',
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 10),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text('Andi'),
                    Text('Budi'),
                    Text('Ceppy'),
                  ],
                ),
                const SizedBox(height: 20),

                // 6. Row Dengan mainAxisAlignment Center
                const Text(
                  '6. Row Dengan mainAxisAlignment center',
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 10),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Andi'),
                    Text('Budi'),
                    Text('Ceppy'),
                  ],
                ),
                const SizedBox(height: 20),

                // 7. Row Dengan mainAxisAlignment End
                const Text(
                  '7. Row Dengan mainAxisAlignment End',
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 10),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text('Andi'),
                    Text('Budi'),
                    Text('Ceppy'),
                  ],
                ),
                const SizedBox(height: 20),

                // 8. Row Dengan mainAxisAlignment SpaceBetween
                const Text(
                  '8. Row Dengan mainAxisAlignment SpaceBetween',
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 10),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Andi'),
                    Text('Budi'),
                    Text('Ceppy'),
                  ],
                ),
                const SizedBox(height: 20),

                // 9. Row Dengan mainAxisAlignment SpaceAround
                const Text(
                  '9. Row Dengan mainAxisAlignment SpaceAround',
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 10),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text('Andi'),
                    Text('Budi'),
                    Text('Ceppy'),
                  ],
                ),
                const SizedBox(height: 20),

                // 10. Row Dengan mainAxisAlignment SpaceEvenly
                const Text(
                  '10. Row Dengan mainAxisAlignment SpaceEvenly',
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 10),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text('Andi'),
                    Text('Budi'),
                    Text('Ceppy'),
                  ],
                ),
                const SizedBox(height: 20),

                // 11. Row Dengan crossAxisAlignment Start
                const Text(
                  '11. Row Dengan crossAxisAlignment Start',
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 10),
                const Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Icon(Icons.person, size: 50),
                    Text('Alifya'),
                  ],
                ),
                const SizedBox(height: 20),

                // 12. Row Dengan crossAxisAlignment Center
                const Text(
                  '12. Row Dengan crossAxisAlignment Center',
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 10),
                const Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Icon(Icons.person, size: 50),
                    Text('Alifya'),
                  ],
                ),
                const SizedBox(height: 20),

                // 13. Row Dengan crossAxisAlignment End
                const Text(
                  '13. Row Dengan crossAxisAlignment End',
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 10),
                const Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Icon(Icons.person, size: 50),
                    Text('Alifya'),
                  ],
                ),
                const SizedBox(height: 20),

                // 16. Row Dengan Expanded
                const Text(
                  '16. Row Dengan Expanded',
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 10),
                Row(
                  children: [
                    Expanded(
                      child: Container(
                        height: 100,
                        color: Colors.blue,
                      ),
                    ),
                    const SizedBox(width: 10),
                    Expanded(
                      child: Container(
                        height: 100,
                        color: Colors.red,
                      ),
                    ),
                    const SizedBox(width: 10),
                    Expanded(
                      child: Container(
                        height: 100,
                        color: Colors.green,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 20),

                // 15. Row Dengan Card
                const Text(
                  '15. Row Dengan Card',
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 10),
                Row(
                  children: [
                    Expanded(
                      child: Card(
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.yellow,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          padding: const EdgeInsets.all(20),
                          child: const Center(
                            child: Text('Produk'),
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Card(
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.yellow,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          padding: const EdgeInsets.all(20),
                          child: const Center(
                            child: Text('Pelanggan'),
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Card(
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.yellow,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          padding: const EdgeInsets.all(20),
                          child: const Center(
                            child: Text('Distributor'),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 20),

                // 16. Row Dengan Expanded
                const Text(
                  '16. Row Dengan Expanded',
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 10),
                Row(
                  children: [
                    Expanded(
                      child: Container(
                        height: 100,
                        color: Colors.blue,
                      ),
                    ),
                    const SizedBox(width: 10),
                    Expanded(
                      child: Container(
                        height: 100,
                        color: Colors.red,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 20),

                // 17. Row Dengan Expanded dan Flex
                const Text(
                  '17. Row Dengan Expanded dan Flex',
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 10),
                Row(
                  children: [
                    Expanded(
                      flex: 2,
                      child: Container(
                        height: 100,
                        color: Colors.blue,
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: Container(
                        height: 100,
                        color: Colors.red,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 20),

                // 18. Row dengan Spacer
                const Text(
                  '18. Row dengan Spacer',
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 10),
                const Row(
                  children: [
                    Icon(Icons.menu),
                    Spacer(),
                    Icon(Icons.search),
                    Icon(Icons.person),
                  ],
                ),
                const SizedBox(height: 20),

                // 19. Row untuk Profile
                const Text(
                  '19. Row untuk Profile',
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 10),
                const Row(
                  children: [
                    CircleAvatar(
                      radius: 30,
                      child: Icon(Icons.person),
                    ),
                    SizedBox(width: 15),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Alifya',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text('XII SIJA'),
                      ],
                    ),
                  ],
                ),
                const SizedBox(height: 20),

                // 20. Row untuk Rating
                const Text(
                  '20. Row untuk Rating',
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 10),
                const Row(
                  children: [
                    Icon(Icons.star, color: Colors.orange),
                    Icon(Icons.star, color: Colors.orange),
                    Icon(Icons.star, color: Colors.orange),
                    Icon(Icons.star_half, color: Colors.orange),
                    SizedBox(width: 20),
                    Text('4.5'),
                  ],
                ),
                const SizedBox(height: 20),

                // 21. Row untuk Harga Produk
                const Text(
                  '21. Row untuk Harga Produk',
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 10),
                Row(
                  children: [
                    const Expanded(
                      child: Text(
                        'Rp 8.500.000',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.favorite_border),
                    ),
                  ],
                ),
                const SizedBox(height: 20),

                // 22. Row dengan Image dan Informasi Produk
                const Text(
                  '22. Row dengan Image dan Informasi Produk',
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 10),
                Row(
                  children: [
                    Image.network(
                      'https://picsum.photos/100',
                      width: 100,
                      height: 100,
                      fit: BoxFit.cover,
                    ),
                    const SizedBox(width: 15),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text(
                            'Laptop ASUS',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: 5),
                          Text('Rp 8.500.000'),
                        ],
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 20),

                // 23. Row dengan Button
                const Text(
                  '23. Row dengan Button',
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 10),
                Row(
                  children: [
                    Expanded(
                      child: ElevatedButton(
                        onPressed: () {},
                        child: const Text('Beli'),
                      ),
                    ),
                    const SizedBox(width: 10),
                    Expanded(
                      child: OutlinedButton(
                        onPressed: () {},
                        child: const Text('Detail'),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 20),

                // 25. Row dengan mainAxisSize Min dan Max
                const Text(
                  '25. Row dengan mainAxisSize Min dan Max',
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 10),
                const Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(Icons.star),
                    Text('Rating'),
                  ],
                ),
                const Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Icon(Icons.star),
                    Text('Rating'),
                  ],
                ),
                const SizedBox(height: 20),

                // 26. Row di Dalam Card
                const Text(
                  '26. Row di Dalam Card',
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 10),
                Card(
                  child: Padding(
                    padding: const EdgeInsets.all(16),
                    child: Row(
                      children: [
                        const Icon(
                          Icons.shopping_cart,
                          size: 40,
                        ),
                        const SizedBox(width: 15),
                        const Expanded(
                          child: Text(
                            'Laptop ASUS',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        const Icon(Icons.arrow_forward_ios),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 20),

                // 27. Row dengan Card Dashboard
                const Text(
                  '27. Row dengan Card Dashboard',
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 10),
                Row(
                  children: [
                    Expanded(
                      child: Card(
                        child: Padding(
                          padding: const EdgeInsets.all(20),
                          child: Column(
                            children: const [
                              Icon(Icons.shopping_cart),
                              SizedBox(height: 10),
                              Text('Produk'),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Card(
                        child: Padding(
                          padding: const EdgeInsets.all(20),
                          child: Column(
                            children: const [
                              Icon(Icons.people),
                              SizedBox(height: 10),
                              Text('Pelanggan'),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 20),

                // 28. Row dengan VerticalDivider
                const Text(
                  '28. Row dengan VerticalDivider',
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 20),
                SizedBox(
                  width: double.infinity,
                  height: 60,
                  child: Row(
                    children: [
                      const Expanded(
                        child: Center(
                          child: Text('Produk'),
                        ),
                      ),
                      const VerticalDivider(
                        color: Colors.grey,
                        thickness: 2,
                        width: 20,
                        indent: 10,
                        endIndent: 10,
                      ),
                      const Expanded(
                        child: Center(
                          child: Text('Pelanggan'),
                        ),
                      ),
                      const VerticalDivider(
                        color: Colors.grey,
                        thickness: 2,
                        width: 20,
                        indent: 10,
                        endIndent: 10,
                      ),
                      const Expanded(
                        child: Center(
                          child: Text('Distributor'),
                        ),
                      ),
                      const VerticalDivider(
                        color: Colors.grey,
                        thickness: 2,
                        width: 20,
                        indent: 10,
                        endIndent: 10,
                      ),
                      const Expanded(
                        child: Center(
                          child: Text('Diskon'),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 20),

                // 29. Row di Dalam Column
                const Text(
                  '29. Row di Dalam Column',
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 20),
                Column(
                  children: [
                    const Text(
                      'Produk Terbaru',
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 15),
                    Row(
                      children: [
                        Expanded(
                          child: Card(
                            child: Padding(
                              padding: const EdgeInsets.all(20),
                              child: const Text('Laptop'),
                            ),
                          ),
                        ),
                        const SizedBox(width: 10),
                        Expanded(
                          child: Card(
                            child: Padding(
                              padding: const EdgeInsets.all(20),
                              child: const Text('Smartphone'),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                const SizedBox(height: 50),

                // 30. Row Bermasalah Jika Teks Terlalu Panjang
                const Text(
                  '30. Row Bermasalah Jika Teks Terlalu Panjang',
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 10),
                Row(
                  children: [
                    const Expanded(
                      child: Text(
                        'Ini adalah teks yang sangat panjang '
                        'dan dapat menyebabkan overflow pada Row..',
                      ),
                    ),
                    const Icon(Icons.star),
                  ],
                ),
                const SizedBox(height: 50),

                // 31. Row + Expanded untuk Teks Panjang
                const Text(
                  '31. Row + Expanded untuk Teks Panjang',
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 10),
                const Row(
                  children: [
                    Icon(
                      Icons.info,
                      color: Colors.blue,
                    ),
                    SizedBox(width: 10),
                    Expanded(
                      child: Text(
                        'Flutter merupakan framework yang '
                        'digunakan untuk membuat aplikasi '
                        'multiplatform.',
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 20),

                // 32. Contoh Product Card Menggunakan Row
                const Text(
                  '32. Contoh Product Card Menggunakan Row',
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 10),
                Card(
                  child: Padding(
                    padding: const EdgeInsets.all(16),
                    child: Row(
                      children: [
                        Image.network(
                          'https://picsum.photos/120',
                          width: 100,
                          height: 100,
                          fit: BoxFit.cover,
                        ),
                        const SizedBox(width: 15),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                'Laptop ASUS',
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              const SizedBox(height: 5),
                              const Text('Rp 8.500.000'),
                              const SizedBox(height: 5),
                              Row(
                                children: const [
                                  Icon(
                                    Icons.star,
                                    color: Colors.orange,
                                    size: 20,
                                  ),
                                  SizedBox(width: 5),
                                  Text('4.8'),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),

                const SizedBox(height: 30),
              ],
            ),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.pop(context);
          },
          backgroundColor: Colors.purpleAccent,
          child: const Icon(
            Icons.arrow_back,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}