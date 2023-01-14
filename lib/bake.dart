import 'package:flutter/cupertino.dart';

class Bake {
  final String korname;
  final String enname;
  final int price;
  final Image img;

  Bake(this.korname, this.enname, this.price, this.img);

  Bake.fromJson(Map<String, dynamic> json)
      : korname = json['korname'],
        enname = json['enname'],
        price = json['price'],
        img = json['img'];

  Map<String, dynamic> toJson() => {
        'korname': korname,
        'enname': enname,
        'price': price,
        'img': img,
      };
}
