import 'package:flutter/material.dart';

import 'package:dasar_widget/widgets/text_widget.dart';
import 'package:dasar_widget/widgets/container_widget.dart';
import 'package:dasar_widget/widgets/center_widget.dart';
import 'package:dasar_widget/widgets/sizebox_widget.dart';
import 'package:dasar_widget/widgets/padding_widget.dart';
import 'package:dasar_widget/widgets/icon_widget.dart';
import 'package:dasar_widget/widgets/image_widget.dart';
import 'package:dasar_widget/widgets/card_widget.dart';
import 'package:dasar_widget/widgets/row_widget.dart';
import 'package:dasar_widget/widgets/column_widget.dart';
import 'package:dasar_widget/widgets/tugas1.dart';
import 'package:dasar_widget/widgets/stack_widget.dart';

class MenuPage extends StatelessWidget {
  const MenuPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // 1. TEXT WIDGET
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const TextWidget(),
                ),
              );
            },
            child: const Padding(
              padding: EdgeInsets.only(top: 10, left: 10, right: 10),
              child: Text(
                '1. Text Widget',
                style: TextStyle(
                  color: Colors.blue,
                  fontSize: 15,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ),

          // 2. CONTAINER WIDGET
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const ContainerWidget(),
                ),
              );
            },
            child: const Padding(
              padding: EdgeInsets.only(top: 10, left: 10, right: 10),
              child: Text(
                '2. Container Widget',
                style: TextStyle(
                  color: Colors.blue,
                  fontSize: 15,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ),

          // 3. CENTER WIDGET
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const CenterWidget(),
                ),
              );
            },
            child: const Padding(
              padding: EdgeInsets.only(top: 10, left: 10, right: 10),
              child: Text(
                '3. Center Widget',
                style: TextStyle(
                  color: Colors.blue,
                  fontSize: 15,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ),

          // 4. SIZEBOX WIDGET
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const SizeBoxWidget(),
                ),
              );
            },
            child: const Padding(
              padding: EdgeInsets.only(top: 10, left: 10, right: 10),
              child: Text(
                '4. Sizebox Widget',
                style: TextStyle(
                  color: Colors.blue,
                  fontSize: 15,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ),

          // 5. PADDING WIDGET
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const PaddingWidget(),
                ),
              );
            },
            child: const Padding(
              padding: EdgeInsets.only(top: 10, left: 10, right: 10),
              child: Text(
                '5. Padding Widget',
                style: TextStyle(
                  color: Colors.blue,
                  fontSize: 15,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ),

          // 6. ICON WIDGET
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const IconWidget(),
                ),
              );
            },
            child: const Padding(
              padding: EdgeInsets.only(top: 10, left: 10, right: 10),
              child: Text(
                '6. Icon Widget',
                style: TextStyle(
                  color: Colors.blue,
                  fontSize: 15,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ),

          // 7. IMAGE WIDGET
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const ImageWidget(),
                ),
              );
            },
            child: const Padding(
              padding: EdgeInsets.only(top: 10, left: 10, right: 10),
              child: Text(
                '7. Image Widget',
                style: TextStyle(
                  color: Colors.blue,
                  fontSize: 15,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ),

          // 8. CARD WIDGET
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const CardWidget(),
                ),
              );
            },
            child: const Padding(
              padding: EdgeInsets.only(top: 10, left: 10, right: 10),
              child: Text(
                '8. Card Widget',
                style: TextStyle(
                  color: Colors.blue,
                  fontSize: 15,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ),

          const SizedBox(height: 80),

          // JUDUL LAYOUT WIDGET
          Container(
            width: double.infinity,
            padding: const EdgeInsets.symmetric(vertical: 18),
            color: Colors.purpleAccent,
            child: const Center(
              child: Text(
                'LAYOUT WIDGET',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),

          // GARIS KUNING
          Container(
            width: double.infinity,
            height: 7,
            color: Colors.yellow,
          ),

          // TOMBOL LAYOUT WIDGET
          Padding(
            padding: const EdgeInsets.all(10),
            child: Wrap(
              spacing: 10,
              runSpacing: 12,
              children: [
                _layoutButton('Row', () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const RowWidget(),
                    ),
                  );
                }),
                _layoutButton('Column', () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const ColumnWidget(),
                    ),
                  );
                }),
                _layoutButton('Stack', () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const StackWidget(),
                    ),
                  );
                }),
                _layoutButton('Expanded', null),
                _layoutButton('Flexible', null),
                _layoutButton('Align', null),
                _layoutButton('Wrap', null),
                _layoutButton('ListView', null),
                _layoutButton('GridView', null),
              ],
            ),
          ),

          // JUDUL EVALUASI
          Container(
            width: double.infinity,
            padding: const EdgeInsets.symmetric(vertical: 12),
            color: const Color(0xFF4053B3),
            child: const Center(
              child: Text(
                'EVALUASI',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),

          // GARIS KUNING EVALUASI
          Container(
            width: double.infinity,
            height: 7,
            color: Colors.yellow,
          ),

          // TOMBOL TUGAS
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 40,
              vertical: 12,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // TUGAS 1: BISA DIKLIK
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const Tugas1(),
                      ),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.yellow,
                    foregroundColor: Colors.blue,
                    elevation: 3,
                    shape: const RoundedRectangleBorder(),
                  ),
                  child: const Text(
                    'TUGAS 1',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                ),

                // TUGAS 2: FORMALITAS, TIDAK MEMBUKA HALAMAN
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.yellow,
                    foregroundColor: Colors.blue,
                    elevation: 3,
                    shape: const RoundedRectangleBorder(),
                  ),
                  child: const Text(
                    'TUGAS 2',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  static Widget _layoutButton(
    String text,
    VoidCallback? onPressed,
  ) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.purpleAccent,
        foregroundColor: Colors.white,
        disabledBackgroundColor: Colors.purpleAccent,
        disabledForegroundColor: Colors.white,
        minimumSize: const Size(75, 40),
        padding: const EdgeInsets.symmetric(
          horizontal: 18,
          vertical: 12,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30),
        ),
      ),
      child: Text(text),
    );
  }
}