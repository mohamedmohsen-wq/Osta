import 'package:flutter/material.dart';

class Item{
  final String id ;
  final String name;
  final String image;
  final Color color;

  Item({required this.id, required this.name, required this.image,required this.color});

}
List<Item> item = [
  Item(name: "نجاره", image: "images3/Carpenter.png", color: Color(0xffAAB2E9), id: 'i1'),
  Item(name: "كهرباء", image: "images3/Electricity.png", color: Color(0xffE9AAC5), id: 'i2'),
  Item(name: "سباك", image: "images3/Plumber.png", color: Color(0xffAAE3E9), id: 'i3'),
  Item(name: "حدائق", image: "images3/gardens.png", color: Color(0xffBFE9AA), id: 'i4'),
  Item(name: "بناء", image: "images3/pngwing.com (25).png", color: Color(0xffE9BFAA), id: 'i5'),
  Item(name: "نظافة", image: "images3/pngwing.com (24).png", color: Color(0xffDDAAE9), id: 'i6'),
  Item(name: "نجاره", image: "images3/Carpenter.png", color: Color(0xffAAB2E9), id: 'i7'),
  Item(name: "كهرباء", image: "images3/Electricity.png", color: Color(0xffE9AAC5), id: 'i8'),
  Item(name: "سباك", image: "images3/Plumber.png", color: Color(0xffAAE3E9), id: 'i9'),
  Item(name: "حدائق", image: "images3/gardens.png", color: Color(0xffBFE9AA), id: 'i10'),
  Item(name: "بناء", image: "images3/pngwing.com (25).png", color: Color(0xffE9BFAA), id: 'i11'),
  Item(name: "نظافة", image: "images3/pngwing.com (24).png", color: Color(0xffDDAAE9), id: 'i12'),
];
