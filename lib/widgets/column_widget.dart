import 'package:flutter/material.dart';

class ColumnWidget extends StatelessWidget {
  const ColumnWidget({super.key});

  // Judul tiap contoh (sudah pakai Expanded, jadi tidak overflow)
  Widget _judul(String nomor, String teks) {
    return Row(
      children: [
        CircleAvatar(child: Text(nomor)),
        const SizedBox(width: 10),
        Expanded(
          child: Text(
            teks,
            style: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ],
    );
  }

  // Isi kotak untuk contoh mainAxisAlignment / crossAxisAlignment
  Widget _kotak({
    required Color warna,
    required String kalimat,
    MainAxisAlignment main = MainAxisAlignment.start,
    CrossAxisAlignment cross = CrossAxisAlignment.center,
  }) {
    return Padding(
      padding: const EdgeInsets.only(left: 50, right: 0),
      child: Container(
        height: 300,
        color: warna,
        child: Column(
          mainAxisAlignment: main,
          crossAxisAlignment: cross,
          children: [
            Text(kalimat),
            const Text('Elektronik'),
            const Text('Fashion'),
            const Text('Kesehatan'),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    const kalimatMain = 'Pada Column, main axis adalah sumbu vertikal';
    const kalimatCross = 'Pada Column, cross axis adalah sumbu horizontal';

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            'Belajar Column',
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
                // 1
                _judul('1', 'Column Paling Sederhana'),
                const SizedBox(height: 10),
                const Padding(
                  padding: EdgeInsets.only(left: 50, right: 0),
                  child: Column(
                    children: [
                      Text('Nama'),
                      Text('Alamat'),
                      Text('No. Telepon'),
                    ],
                  ),
                ),
                const SizedBox(height: 20),

                // 2
                _judul('2', 'Column dengan Text'),
                const SizedBox(height: 10),
                const Padding(
                  padding: EdgeInsets.only(left: 50, right: 0),
                  child: Column(
                    children: [
                      Text(
                        'Belajar Flutter',
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text('Materi Widget Column'),
                      Text('Kelas XII SIJA'),
                    ],
                  ),
                ),
                const SizedBox(height: 20),

                // 3
                _judul('3', 'Column dengan Icon'),
                const SizedBox(height: 10),
                Padding(
                  padding: const EdgeInsets.only(left: 50, right: 0),
                  child: Container(
                    color: const Color.fromARGB(255, 107, 48, 44),
                    width: 100,
                    child: const Column(
                      children: [
                        Icon(
                          Icons.home,
                          size: 50,
                          color: Color.fromARGB(255, 68, 243, 33),
                        ),
                        Text(
                          'Home',
                          style: TextStyle(
                            color: Color.fromARGB(255, 68, 243, 33),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 20),

                // 4
                _judul('4', 'Column dengan SizedBox'),
                const SizedBox(height: 10),
                const Padding(
                  padding: EdgeInsets.only(left: 50, right: 0),
                  child: Column(
                    children: [
                      Text('Nama'),
                      SizedBox(height: 20),
                      Text('Alamat'),
                      SizedBox(height: 20),
                      Text('Telepon'),
                    ],
                  ),
                ),
                const SizedBox(height: 20),

                // 5
                _judul('5', 'Column dengan mainAxisAlignment.start'),
                const SizedBox(height: 10),
                _kotak(
                  warna: Colors.lime,
                  kalimat: kalimatMain,
                  main: MainAxisAlignment.start,
                ),
                const SizedBox(height: 20),

                // 6
                _judul('6', 'Column dengan mainAxisAlignment.center'),
                const SizedBox(height: 10),
                _kotak(
                  warna: Colors.lime,
                  kalimat: kalimatMain,
                  main: MainAxisAlignment.center,
                ),
                const SizedBox(height: 20),

                // 7
                _judul('7', 'Column dengan mainAxisAlignment.end'),
                const SizedBox(height: 10),
                _kotak(
                  warna: Colors.lime,
                  kalimat: kalimatMain,
                  main: MainAxisAlignment.end,
                ),
                const SizedBox(height: 20),

                // 8
                _judul('8', 'Column dengan mainAxisAlignment.spacebetween'),
                const SizedBox(height: 10),
                _kotak(
                  warna: Colors.lime,
                  kalimat: kalimatMain,
                  main: MainAxisAlignment.spaceBetween,
                ),
                const SizedBox(height: 20),

                // 9
                _judul('9', 'Column dengan mainAxisAlignment.spaceAround'),
                const SizedBox(height: 10),
                _kotak(
                  warna: Colors.lime,
                  kalimat: kalimatMain,
                  main: MainAxisAlignment.spaceAround,
                ),
                const SizedBox(height: 20),

                // 10
                _judul('10', 'Column dengan mainAxisAlignment.spaceEvenly'),
                const SizedBox(height: 10),
                _kotak(
                  warna: Colors.lime,
                  kalimat: kalimatMain,
                  main: MainAxisAlignment.spaceEvenly,
                ),
                const SizedBox(height: 20),

                // 11
                _judul('11', 'Column dengan crossAxisAlignment.start'),
                const SizedBox(height: 10),
                _kotak(
                  warna: Colors.green,
                  kalimat: kalimatCross,
                  cross: CrossAxisAlignment.start,
                ),
                const SizedBox(height: 20),

                // 12
                _judul('12', 'Column dengan crossAxisAlignment.center'),
                const SizedBox(height: 10),
                _kotak(
                  warna: Colors.green,
                  kalimat: kalimatCross,
                  cross: CrossAxisAlignment.center,
                ),
                const SizedBox(height: 20),

                // 13
                _judul('13', 'Column dengan crossAxisAlignment.end'),
                const SizedBox(height: 10),
                _kotak(
                  warna: Colors.green,
                  kalimat: kalimatCross,
                  cross: CrossAxisAlignment.end,
                ),
                const SizedBox(height: 20),

                // 14
                _judul('14', 'Column dengan crossAxisAlignment.stretch'),
                const SizedBox(height: 10),
                Padding(
                  padding: const EdgeInsets.only(left: 50, right: 0),
                  child: Container(
                    height: 300,
                    color: Colors.green,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        const Text(
                          'Pada Column, CrossAxisAlignment.stretch, Widget anak akan melebar memenuhi ruang horizontal yang tersedia. Sangat berguna untuk tombol full width.',
                        ),
                        const SizedBox(height: 10),
                        ElevatedButton(
                          onPressed: () {},
                          child: const Text('Login'),
                        ),
                        ElevatedButton(
                          onPressed: () {},
                          child: const Text('Register'),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 20),

                // 15
                _judul('15', 'Column dengan Button'),
                const SizedBox(height: 10),
                Padding(
                  padding: const EdgeInsets.only(left: 50, right: 0),
                  child: Column(
                    children: [
                      ElevatedButton(
                        onPressed: () {},
                        child: const Text('Login'),
                      ),
                      ElevatedButton(
                        onPressed: () {},
                        child: const Text('Register'),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 20),

                // 16
                _judul('16', 'Column dengan TextField'),
                const SizedBox(height: 10),
                Padding(
                  padding: const EdgeInsets.only(left: 50, right: 0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Icon(Icons.lock, size: 80),
                      const SizedBox(height: 20),
                      const Text(
                        'Login',
                        style: TextStyle(
                          fontSize: 28,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 20),
                      const TextField(
                        decoration: InputDecoration(
                          labelText: 'Username',
                          border: OutlineInputBorder(),
                        ),
                      ),
                      const SizedBox(height: 16),
                      const TextField(
                        obscureText: true,
                        decoration: InputDecoration(
                          labelText: 'Password',
                          border: OutlineInputBorder(),
                        ),
                      ),
                      const SizedBox(height: 20),
                      ElevatedButton(
                        onPressed: () {},
                        child: const Text('Login'),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 20),

                // 17
                _judul('17', 'Column dengan Row'),
                const SizedBox(height: 10),
                Padding(
                  padding: const EdgeInsets.only(left: 50, right: 0),
                  child: Card(
                    color: Colors.lime,
                    child: Padding(
                      padding: const EdgeInsets.all(16),
                      child: Card(
                        color: Colors.green,
                        child: Padding(
                          padding: const EdgeInsets.all(16),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              Text(
                                'Laptop ASUS',
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(height: 8),
                              Row(
                                children: [
                                  Icon(Icons.star),
                                  SizedBox(width: 5),
                                  Text('4.8'),
                                ],
                              ),
                              SizedBox(height: 8),
                              Text('Rp 8.000.000'),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 20),

                // 18
                _judul('18', 'Column + Avatar + Profile'),
                const SizedBox(height: 10),
                Padding(
                  padding: const EdgeInsets.only(left: 50, right: 0),
                  child: Column(
                    children: [
                      const CircleAvatar(
                        radius: 50,
                        backgroundImage: AssetImage('assets/images/alifya.jpeg'),
                      ),
                      const SizedBox(height: 16),
                      const Text(
                        'Alifya Putri Tansya',
                        style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 5),
                      const Text('Web & Mobile Developer'),
                      const SizedBox(height: 20),
                      ElevatedButton(
                        onPressed: () {},
                        child: const Text('Edit Profile'),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 50),
              ],
            ),
          ),
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