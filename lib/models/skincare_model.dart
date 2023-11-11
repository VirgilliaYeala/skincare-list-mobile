import 'package:flutter/material.dart';

class Skincare {
  String? brand;
  String? name;
  int? amount;
  int? price;
  String? description;

  Skincare({
    required this.brand,
    required this.name,
    required this.amount,
    required this.price,
    required this.description,
  });

   Widget show() {
    return Card(
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
          "$brand - $name",
          style: const TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w400,
            color: Color(0xFFA42153)
          ),
        ),
        subtitle: Text(
          "$description\nJumlah: $amount \nHarga: $price"
          )
      ),
    );
  }
}
