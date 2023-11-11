import 'package:flutter/material.dart';
import 'package:skincare_list/models/skincare_model.dart';
import 'package:skincare_list/widgets/left_drawer.dart';

List dataSkincare = <Skincare>[];

class DataSkincarePage extends StatefulWidget {
  const DataSkincarePage({super.key});

  @override
  State<DataSkincarePage> createState() => _DataSkincarePageState();
}

class _DataSkincarePageState extends State<DataSkincarePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text(
            'Lihat Skincare',
            style: TextStyle(
              color: Color(0xFFEBC2D5),
            ),
          ),
        ),
        backgroundColor: const Color(0xFFA42153),
        foregroundColor: Colors.white,
      ),
      drawer: const LeftDrawer(),
      body: Container(
          padding: const EdgeInsets.all(8),
          child: ListView(
            padding: const EdgeInsets.all(8),
            children: <Widget>[
              for (Skincare i in dataSkincare) i.show()
            ],
          )),
    );
  }
}