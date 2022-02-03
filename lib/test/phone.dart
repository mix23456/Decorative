// To parse this JSON data, do
//
//     final phone = phoneFromJson(jsonString);

import 'package:meta/meta.dart';
import 'dart:convert';

List<Phone> phoneFromJson(String str) =>
    List<Phone>.from(json.decode(str).map((x) => Phone.fromJson(x)));

String phoneToJson(List<Phone> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Phone {
  Phone({
    required this.name,
    required this.description,
    required this.price,
    required this.image,
  });

  String name;
  String description;
  int price;
  String image;

  factory Phone.fromJson(Map<String, dynamic> json) => Phone(
        name: json["name"],
        description: json["description"],
        price: json["price"],
        image: json["image"],
      );

  Map<String, dynamic> toJson() => {
        "name": name,
        "description": description,
        "price": price,
        "image": image,
      };
}
