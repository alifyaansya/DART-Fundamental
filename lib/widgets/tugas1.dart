import 'package:flutter/material.dart';

class Tugas1 extends StatelessWidget {
  const Tugas1({super.key});

  static const Color backgroundColor = Color(0xFFFFF7FF);
  static const Color headerColor = Color(0xFF536DFE);
  static const Color blueColor = Color(0xFF2196F3);
  static const Color redColor = Color(0xFFF44336);
  static const Color yellowColor = Color(0xFFFFE83B);
  static const Color numberColor = Color(0xFFEBDDFF);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: AppBar(
        backgroundColor: headerColor,
        foregroundColor: Colors.white,
        elevation: 0,
        title: const Text(
          'Tugas 1 - Layout Widget',
          style: TextStyle(fontSize: 18),
        ),
      ),
      body: Stack(
        children: [
          ListView(
            padding: const EdgeInsets.fromLTRB(16, 16, 16, 90),
            children: [
              const Text(
                'Buatlah layout widget sebagai berikut:',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF303030),
                ),
              ),

              const SizedBox(height: 18),

              // 1. KOTAK BERTUMPUK
              _sectionTitle(1, 'Kotak Bertumpuk'),
              const SizedBox(height: 12),

              Center(
                child: SizedBox(
                  width: 200,
                  height: 198,
                  child: Stack(
                    children: [
                      Positioned(
                        left: 0,
                        top: 0,
                        width: 143,
                        height: 143,
                        child: Container(color: blueColor),
                      ),
                      Positioned(
                        left: 143,
                        top: 0,
                        width: 55,
                        height: 143,
                        child: Container(color: redColor),
                      ),
                      Positioned(
                        left: 0,
                        top: 143,
                        width: 118,
                        height: 55,
                        child: Container(color: redColor),
                      ),
                      Positioned(
                        left: 118,
                        top: 118,
                        width: 80,
                        height: 80,
                        child: Container(color: yellowColor),
                      ),
                    ],
                  ),
                ),
              ),

              const SizedBox(height: 16),

              // 2. BANNER PROMOSI
              _sectionTitle(2, 'Banner Promosi'),
              const SizedBox(height: 12),

              Container(
                height: 175,
                width: double.infinity,
                clipBehavior: Clip.antiAlias,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(4),
                  color: const Color(0xFF42372F),
                ),
                child: Stack(
                  fit: StackFit.expand,
                  children: [
                    Image(
                      image: const AssetImage('assets/images/makanan.jpg'),
                      fit: BoxFit.cover,
                      errorBuilder: (context, error, stackTrace) {
                        return Container(
                          color: const Color(0xFF514137),
                          child: const Icon(
                            Icons.restaurant,
                            size: 60,
                            color: Colors.white54,
                          ),
                        );
                      },
                    ),
                    Container(
                      color: Colors.black.withValues(alpha: 0.48),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(14),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const SizedBox(height: 2),
                          const Text(
                            'PROMO SPESIAL!',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 21,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(height: 4),
                          const Text(
                            'Diskon hingga 50% untuk produk pilihan.',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 12,
                            ),
                          ),
                          const Spacer(),
                          Align(
                            alignment: Alignment.bottomLeft,
                            child: ElevatedButton(
                              onPressed: () {},
                              style: ElevatedButton.styleFrom(
                                backgroundColor: backgroundColor,
                                foregroundColor: const Color(0xFF6750A4),
                                elevation: 0,
                                shape: const StadiumBorder(),
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 20,
                                  vertical: 12,
                                ),
                              ),
                              child: const Text(
                                'Lihat Promo',
                                style: TextStyle(fontSize: 11),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 16),

              // 3. PROFIL SISWA
              _sectionTitle(3, 'Profil Siswa dengan Ikon Edit'),
              const SizedBox(height: 12),

              Column(
                children: [
                  SizedBox(
                    width: 110,
                    height: 110,
                    child: Stack(
                      clipBehavior: Clip.none,
                      children: [
                        Container(
                          width: 110,
                          height: 110,
                          decoration: const BoxDecoration(
                            color: blueColor,
                            shape: BoxShape.circle,
                          ),
                          child: const Icon(
                            Icons.person,
                            color: Colors.white,
                            size: 85,
                          ),
                        ),
                        Positioned(
                          right: 0,
                          bottom: 0,
                          child: Container(
                            width: 40,
                            height: 40,
                            decoration: const BoxDecoration(
                              color: Color(0xFFFF9800),
                              shape: BoxShape.circle,
                            ),
                            child: const Icon(
                              Icons.edit,
                              color: Colors.white,
                              size: 21,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 18),
                  const Text(
                    'Alifya Putri Tansya',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF222222),
                    ),
                  ),
                  const SizedBox(height: 6),
                  const Text(
                    'Kelas XII SIJA',
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.grey,
                    ),
                  ),
                  const SizedBox(height: 18),
                  OutlinedButton.icon(
                    onPressed: () {},
                    icon: const Icon(Icons.person, size: 16),
                    label: const Text('Lihat Profil'),
                    style: OutlinedButton.styleFrom(
                      foregroundColor: const Color(0xFF6750A4),
                      backgroundColor: const Color(0xFFF8F3FF),
                      side: BorderSide.none,
                      elevation: 1,
                      padding: const EdgeInsets.symmetric(
                        horizontal: 20,
                        vertical: 12,
                      ),
                    ),
                  ),
                ],
              ),

              const SizedBox(height: 20),

              // 4. BADGE KERANJANG BELANJA
              _sectionTitle(4, 'Badge Keranjang Belanja'),
              const SizedBox(height: 16),

              const Icon(
                Icons.shopping_cart,
                color: blueColor,
                size: 54,
              ),
              const SizedBox(height: 20),
              const Text(
                'Keranjang Belanja',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF222222),
                ),
              ),
              const SizedBox(height: 10),
              const Text(
                'Anda memiliki 5 produk di keranjang.',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 12,
                  color: Color(0xFF555555),
                ),
              ),

              const SizedBox(height: 22),

              // 5. KARTU PRODUK MINIMARKET
              _sectionTitle(5, 'Kartu Produk Minimarket'),
              const SizedBox(height: 12),

              Center(
                child: Container(
                  width: 270,
                  clipBehavior: Clip.antiAlias,
                  decoration: BoxDecoration(
                    color: const Color(0xFFFFD740),
                    borderRadius: BorderRadius.circular(14),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withValues(alpha: 0.18),
                        blurRadius: 6,
                        offset: const Offset(0, 3),
                      ),
                    ],
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 155,
                        child: Stack(
                          fit: StackFit.expand,
                          children: [
                            Image(
                              image: const AssetImage('assets/images/martabak.jpg'),
                              fit: BoxFit.cover,
                              errorBuilder: (context, error, stackTrace) {
                                return Container(
                                  color: const Color(0xFF8B7355),
                                  child: const Icon(
                                    Icons.local_grocery_store,
                                    size: 60,
                                    color: Colors.white70,
                                  ),
                                );
                              },
                            ),
                            Positioned(
                              left: 10,
                              top: 10,
                              child: Container(
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 10,
                                  vertical: 7,
                                ),
                                decoration: BoxDecoration(
                                  color: redColor,
                                  borderRadius: BorderRadius.circular(5),
                                ),
                                child: const Text(
                                  'DISKON 20%',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 10,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ),
                            Positioned(
                              right: 10,
                              top: 8,
                              child: Container(
                                width: 36,
                                height: 36,
                                decoration: const BoxDecoration(
                                  color: Colors.white,
                                  shape: BoxShape.circle,
                                ),
                                child: const Icon(
                                  Icons.favorite_border,
                                  color: redColor,
                                  size: 23,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(14, 12, 14, 14),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              'Martabak Pacenongan',
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                              ),
                            ),
                            const SizedBox(height: 10),
                            const Text(
                              'Rp 20.000',
                              style: TextStyle(
                                color: redColor,
                                fontSize: 17,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            const SizedBox(height: 5),
                            const Text(
                              'Harga sebelum diskon: Rp 25.000',
                              style: TextStyle(
                                color: Colors.grey,
                                fontSize: 10,
                                decoration: TextDecoration.lineThrough,
                              ),
                            ),
                            const SizedBox(height: 14),
                            SizedBox(
                              width: double.infinity,
                              child: ElevatedButton.icon(
                                onPressed: () {},
                                icon: const Icon(
                                  Icons.shopping_cart,
                                  size: 16,
                                ),
                                label: const Text(
                                  'Tambah ke Keranjang',
                                  style: TextStyle(fontSize: 12),
                                ),
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: backgroundColor,
                                  foregroundColor: const Color(0xFF6750A4),
                                  elevation: 1,
                                  padding: const EdgeInsets.symmetric(
                                    vertical: 12,
                                  ),
                                  shape: const StadiumBorder(),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),

          // TOMBOL KEMBALI DI KANAN BAWAH
          Positioned(
            right: 16,
            bottom: 16,
            child: FloatingActionButton(
              heroTag: 'tugas1_back_button',
              onPressed: () {
                Navigator.pop(context);
              },
              backgroundColor: headerColor,
              foregroundColor: Colors.white,
              elevation: 4,
              child: const Icon(Icons.arrow_back),
            ),
          ),
        ],
      ),
    );
  }

  static Widget _sectionTitle(int number, String title) {
    return Row(
      children: [
        Container(
          width: 32,
          height: 32,
          decoration: const BoxDecoration(
            color: numberColor,
            shape: BoxShape.circle,
          ),
          alignment: Alignment.center,
          child: Text(
            '$number',
            style: const TextStyle(
              color: Color(0xFF6750A4),
              fontSize: 14,
            ),
          ),
        ),
        const SizedBox(width: 10),
        Expanded(
          child: Text(
            title,
            style: const TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.bold,
              color: Color(0xFF303030),
            ),
          ),
        ),
      ],
    );
  }
}