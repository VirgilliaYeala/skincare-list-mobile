import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:skincare_list/models/skincare_model.dart';
// import 'package:skincare_list/screens/login.dart';
import 'package:skincare_list/widgets/left_drawer.dart';

class ProductPage extends StatefulWidget {
    const ProductPage({Key? key}) : super(key: key);

    @override
    _ProductPageState createState() => _ProductPageState();
}

class _ProductPageState extends State<ProductPage> {
Future<List<Product>> fetchProduct() async {

    var url = Uri.parse(
        'http://127.0.0.1:8000/json/');
    var response = await http.get(
        url,
        headers: {"Content-Type": "application/json"},
    );

    // melakukan decode response menjadi bentuk json
    var data = jsonDecode(utf8.decode(response.bodyBytes));

    // melakukan konversi data json menjadi object Product
    List<Product> list_product = [];
    for (var d in data) {
        if (d != null) {
            list_product.add(Product.fromJson(d));
        }
    }
    return list_product;
}

@override
Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Skincare',
            style: TextStyle(
                color: Color(0xFFEBC2D5),
              ),
          ),
          backgroundColor: const Color(0xFFA42153),
          foregroundColor: Colors.white,
        ),
        drawer: const LeftDrawer(),
        body: FutureBuilder(
            future: fetchProduct(),
            builder: (context, AsyncSnapshot snapshot) {
                if (snapshot.data == null) {
                    return const Center(child: CircularProgressIndicator());
                } else {
                    if (!snapshot.hasData) {
                    return const Column(
                        children: [
                        Text(
                            "Tidak ada data skincare.",
                            style:
                                TextStyle(color: Color(0xFFA42153), fontSize: 20),
                        ),
                        SizedBox(height: 8),
                        ],
                    );
                } else {
                    return ListView.builder(
                      itemCount: snapshot.data!.length,
                      itemBuilder: (_, index) => Card(
                        color: const Color(0xFFEBC2D5),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15),
                          side: const BorderSide(
                            color: Color(0xFFA42153),
                          ),
                        ),
                        elevation: 2,
                        shadowColor: Colors.black,
                        child: ListTile(
                          title: Text(
                            "${snapshot.data![index].fields.brand} - ${snapshot.data![index].fields.name}",
                            style: const TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w400,
                              color: Color(0xFFA42153),
                            ),
                          ),
                          subtitle: Text(
                            "${snapshot.data![index].fields.description}\nJumlah: ${snapshot.data![index].fields.amount}\nHarga: ${snapshot.data![index].fields.price}",
                          ),
                        ),
                      ),
                    );
                  }
                }
            }));
    }
}