import 'package:flutter/material.dart';
import 'package:skincare_list/screens/menu.dart';
import 'package:skincare_list/widgets/left_drawer.dart';
import 'package:skincare_list/screens/lihat_skincare.dart';
import 'package:skincare_list/models/skincare_model.dart';

class ShopFormPage extends StatefulWidget {
  const ShopFormPage({super.key});

  @override
  State<ShopFormPage> createState() => _ShopFormPageState();
}

class _ShopFormPageState extends State<ShopFormPage> {
  final _formKey = GlobalKey<FormState>();
  String _brand = "";
  String _name = "";
  int _amount = 0;
  int _price = 0;
  String _description = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text(
            'Form Tambah Skincare',
            style: TextStyle(
              color: Color(0xFFEBC2D5),
            ),
          ),
        ),
        backgroundColor: const Color(0xFFA42153),
        foregroundColor: Colors.white,
      ),
      drawer: const LeftDrawer(),
      body: Form(
        key: _formKey,
        child: SingleChildScrollView(
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                decoration: InputDecoration(
                  hintText: "Brand Skincare",
                  labelText: "Brand Skincare",
                  labelStyle: const TextStyle(
                    color: Color(0xFFA42153),
                  ),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5.0),
                      borderSide: const BorderSide(color: Color(0xFFA42153))),
                ),
                onChanged: (String? value) {
                  setState(() {
                    _brand = value!;
                  });
                },
                validator: (String? value) {
                  if (value == null || value.isEmpty) {
                    return "Brand tidak boleh kosong!";
                  }
                  return null;
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                decoration: InputDecoration(
                  hintText: "Nama Skincare",
                  labelText: "Nama Skincare",
                  labelStyle: const TextStyle(
                    color: Color(0xFFA42153),
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5.0),
                  ),
                ),
                onChanged: (String? value) {
                  setState(() {
                    _name = value!;
                  });
                },
                validator: (String? value) {
                  if (value == null || value.isEmpty) {
                    return "Nama tidak boleh kosong!";
                  }
                  return null;
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                decoration: InputDecoration(
                  hintText: "Jumlah Skincare",
                  labelText: "Jumlah Skincare",
                  labelStyle: const TextStyle(
                    color: Color(0xFFA42153),
                  ),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5.0),
                      borderSide: const BorderSide(color: Color(0xFFA42153))),
                ),
                onChanged: (String? value) {
                  setState(() {
                    _amount = int.parse(value!);
                  });
                },
                validator: (String? value) {
                  if (value == null || value.isEmpty) {
                    return "Amount tidak boleh kosong!";
                  }
                  if (int.tryParse(value) == null) {
                    return "Amount harus berupa angka!";
                  }
                  return null;
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                decoration: InputDecoration(
                  hintText: "Harga",
                  labelText: "Harga",
                  labelStyle: const TextStyle(
                    color: Color(0xFFA42153),
                  ),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5.0),
                      borderSide: const BorderSide(color: Color(0xFFA42153))),
                ),
                onChanged: (String? value) {
                  setState(() {
                    _price = int.parse(value!);
                  });
                },
                validator: (String? value) {
                  if (value == null || value.isEmpty) {
                    return "Harga tidak boleh kosong!";
                  }
                  if (int.tryParse(value) == null) {
                    return "Harga harus berupa angka!";
                  }
                  return null;
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                decoration: InputDecoration(
                  hintText: "Deskripsi",
                  labelText: "Deskripsi",
                  labelStyle: const TextStyle(
                    color: Color(0xFFA42153),
                  ),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5.0),
                      borderSide: const BorderSide(color: Color(0xFFA42153))),
                ),
                onChanged: (String? value) {
                  setState(() {
                    _description = value!;
                  });
                },
                validator: (String? value) {
                  if (value == null || value.isEmpty) {
                    return "Deskripsi tidak boleh kosong!";
                  }
                  return null;
                },
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all(const Color(0xFFA42153)),
                  ),
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      _formKey.currentState!.save();

                      var skincare = Skincare(brand : _brand, name: _name, amount: _amount, price: _price, description: _description);
                      dataSkincare.add(skincare);
                      showDialog(
                        context: context,
                        builder: (context) {
                          return AlertDialog(
                            backgroundColor: const Color(0xFFA42153),
                            title: const Center(
                              child: Text(
                                'Skincare berhasil tersimpan',
                                style: TextStyle(color: Color(0xFFEBC2D5))
                                )),
                            content: SingleChildScrollView(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text('Brand: $_brand',
                                      style: const TextStyle(
                                          color: Color(0xFFEBC2D5))),
                                  Text('Nama: $_name',
                                      style: const TextStyle(
                                          color: Color(0xFFEBC2D5))),
                                  Text('Jumlah: $_amount',
                                      style: const TextStyle(
                                          color: Color(0xFFEBC2D5))),
                                  Text('Harga: $_price',
                                      style: const TextStyle(
                                          color: Color(0xFFEBC2D5))),
                                  Text('Deskripsi: $_description',
                                      style: const TextStyle(
                                          color: Color(0xFFEBC2D5))),
                                ],
                              ),
                            ),
                            actions: [
                              TextButton(
                                child: const Text(
                                  'OK',
                                  style: TextStyle(color: Color(0xFFEBC2D5)),
                                ),
                                onPressed: () {
                                    Navigator.pushReplacement(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => MyHomePage(),
                                    ));
                                  },
                              ),
                            ],
                          );
                        },
                      );
                      _formKey.currentState!.reset();
                    }
                  },
                  child: const Text(
                    "Simpan Skincare",
                    style: TextStyle(color: Color(0xFFEBC2D5)),
                  ),
                ),
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
