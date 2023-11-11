import 'package:flutter/material.dart';
import 'package:skincare_list/screens/lihat_skincare.dart';
import 'package:skincare_list/screens/skincarelist_form.dart';

class ShopItem {
  final String name;
  final IconData icon;
  final Color color; // bonus

  ShopItem(this.name, this.icon, this.color);
}

class ShopCard extends StatelessWidget {
  final ShopItem item;

  const ShopCard(this.item, {super.key}); // Constructor

  @override
  Widget build(BuildContext context) {
    return Material(
      color: item.color,
      child: InkWell(
        // Area responsive terhadap sentuhan
        onTap: () {
          // Memunculkan SnackBar ketika diklik
          ScaffoldMessenger.of(context)
            ..hideCurrentSnackBar()
            ..showSnackBar(SnackBar(
                content: Text(
                  "Kamu telah menekan tombol ${item.name}!",
                  style: const TextStyle(
                    color: Color(0xFFEBC2D5),
                  ),
                ), 
                backgroundColor:const Color(0xFFA42153),
              ));

          // Navigate ke route yang sesuai (tergantung jenis tombol)
          if (item.name == "Tambah Skincare") {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const ShopFormPage()),
            );
          }

          if (item.name == "Lihat Skincare") {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const DataSkincarePage()),
            );
          }
        },
        child: Container(
          // Container untuk menyimpan Icon dan Text
          padding: const EdgeInsets.all(8),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  item.icon,
                  color:const Color(0xFFA42153),
                  size: 30.0,
                ),
                const Padding(padding: EdgeInsets.all(3)),
                Text(
                  item.name,
                  textAlign: TextAlign.center,
                  style: const TextStyle(color:Color(0xFFA42153)),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}