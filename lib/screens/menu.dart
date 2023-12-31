import 'package:flutter/material.dart';
import 'package:skincare_list/widgets/left_drawer.dart';
import 'package:skincare_list/widgets/list_card.dart';

class MyHomePage extends StatelessWidget {
  MyHomePage({Key? key}) : super(key: key);

  final List<ShopItem> items = [
    ShopItem("Lihat Skincare", Icons.checklist, const Color(0xFFFFC0CB)),
    ShopItem("Tambah Skincare", Icons.add_shopping_cart, const Color(0xFFF078C0)),
    ShopItem("Logout", Icons.logout, const Color(0xFFFFA6CA)),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Skincare List',
          style: TextStyle(
            color:Color(0xFFEBC2D5),
          ),
        ),
        backgroundColor: const Color(0xFFA42153),
        foregroundColor: Colors.white,
      ),
      drawer: const LeftDrawer(),
      body: SingleChildScrollView(
        // Widget wrapper yang dapat discroll
        child: Padding(
          padding: const EdgeInsets.all(10.0), // Set padding dari halaman
          child: Column(
            // Widget untuk menampilkan children secara vertikal
            children: <Widget>[
              const Padding(
                padding: EdgeInsets.only(top: 10.0, bottom: 10.0),
                // Widget Text untuk menampilkan tulisan dengan alignment center dan style yang sesuai
                child: Text(
                  'Welcome to Skincare List', // Text yang menandakan toko
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color:Color(0xFFA42153),
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              // Grid layout
              GridView.count(
                // Container pada card kita.
                primary: true,
                padding: const EdgeInsets.all(20),
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
                crossAxisCount: 3,
                shrinkWrap: true,
                children: items.map((ShopItem item) {
                  // Iterasi untuk setiap item
                  return ShopCard(item);
                }).toList(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
