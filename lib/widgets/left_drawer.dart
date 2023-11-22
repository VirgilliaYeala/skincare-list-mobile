import 'package:flutter/material.dart';
import 'package:skincare_list/screens/list_skincare.dart';
import 'package:skincare_list/screens/menu.dart';
import 'package:skincare_list/screens/skincarelist_form.dart';

class LeftDrawer extends StatelessWidget {
  const LeftDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: const Color(0xFFA42153),
      child: ListView(
        children: [
          const DrawerHeader(
            decoration: BoxDecoration(
              color: Color(0xFFEBC2D5),
            ),
            child: Column(
              children: [
                Text(
                  'Skincare List',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFFA42153),
                  ),
                ),
                Padding(padding: EdgeInsets.all(10)),
                Text(
                  "Catat seluruh skincare favoritemu di sini!",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 15,
                    color: Color(0xFFA42153),
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ],
            ),
          ),
          ListTile(
            leading: const Icon(
              Icons.home_outlined,
              color: Color(0xFFEBC2D5),
            ),
            title: const Text(
              'Halaman Utama',
              style: TextStyle(
                color: Color(0xFFEBC2D5),
              ),
            ),
            // Bagian redirection ke MyHomePage
            onTap: () {
              Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => MyHomePage(),
                  ));
            },
          ),
          ListTile(
            leading: const Icon(
              Icons.add_shopping_cart,
              color: Color(0xFFEBC2D5),
            ),
            title: const Text(
              'Tambah Skincare',
              style: TextStyle(
                color: Color(0xFFEBC2D5),
              ),
            ),
            // Bagian redirection ke ShopFormPage
            onTap: () {
              /*
              setelah halaman ShopFormPage sudah dibuat.
              */
              Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const ShopFormPage(),
                  ));
            },
          ),
          ListTile(
            leading: const Icon(Icons.shopping_basket, color: Color(0xFFEBC2D5)),
            title: const Text('Lihat Skincare',
              style: TextStyle(
                  color: Color(0xFFEBC2D5),
                ),
            ),
            onTap: () {
              // Route menu ke halaman produk
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const ProductPage()),
              );
            },
          ),
        ],
      ),
    );
  }
}
