import 'package:flutter/material.dart';

class Category {
  final int id;
  final int status;
  final String name, subtitle, image;
  Category({
    @required this.id,
    @required this.name,
    @required this.subtitle,
    @required this.image,
    this.status = 1,
  });
  factory Category.fromJson(Map<String, dynamic> json) {
    return Category(
      id: json['id'],
      name: json['name'],
      subtitle: json['subtitle'],
      image: json['image'],
      status: json['status'],
    );
  }
}

class CategoryList {
  final List<Category> categories;

  CategoryList({this.categories});
  factory CategoryList.fromJson(List<dynamic> parsedJson) {
    List<Category> categories = new List<Category>();

    return new CategoryList(
      categories: categories,
    );
  }
}


//Our demo products
List<Category> demoCategories = [
  Category(
      id: 29,
      name: "Pasteleria",
      subtitle: "Pasteles Don Benny",
      image:
          "http://deliverapp.sedi.pe/deliveryapp/upload/images/3893-2020-10-12.png"),
  Category(
      id: 30,
      name: "Heladería",
      subtitle: "Heladeía Don Benny",
      image:
          "http://deliverapp.sedi.pe/deliveryapp/upload/images/3893-2020-10-12.png"),
  Category(
      id: 30,
      name: "Heladería",
      subtitle: "Heladeía Don Benny",
      image:
          "http://deliverapp.sedi.pe/deliveryapp/upload/images/3893-2020-10-12.png"),
  Category(
      id: 30,
      name: "Heladería",
      subtitle: "Heladeía Don Benny",
      image:
          "http://deliverapp.sedi.pe/deliveryapp/upload/images/3893-2020-10-12.png"),
  Category(
      id: 30,
      name: "Heladería",
      subtitle: "Heladeía Don Benny",
      image:
          "http://deliverapp.sedi.pe/deliveryapp/upload/images/3893-2020-10-12.png"),
  Category(
      id: 30,
      name: "Heladería",
      subtitle: "Heladeía Don Benny",
      image:
          "http://deliverapp.sedi.pe/deliveryapp/upload/images/3893-2020-10-12.png"),
  Category(
      id: 30,
      name: "Heladería",
      subtitle: "Heladeía Don Benny",
      image:
          "http://deliverapp.sedi.pe/deliveryapp/upload/images/3893-2020-10-12.png"),
  Category(
      id: 30,
      name: "Heladería",
      subtitle: "Heladeía Don Benny",
      image:
          "http://deliverapp.sedi.pe/deliveryapp/upload/images/3893-2020-10-12.png"),
  Category(
      id: 30,
      name: "Heladería",
      subtitle: "Heladeía Don Benny",
      image:
          "http://deliverapp.sedi.pe/deliveryapp/upload/images/3893-2020-10-12.png"),
  Category(
      id: 30,
      name: "Heladería",
      subtitle: "Heladeía Don Benny",
      image:
          "http://deliverapp.sedi.pe/deliveryapp/upload/images/3893-2020-10-12.png"),
  Category(
      id: 30,
      name: "Heladería",
      subtitle: "Heladeía Don Benny",
      image:
          "http://deliverapp.sedi.pe/deliveryapp/upload/images/3893-2020-10-12.png"),
  Category(
      id: 30,
      name: "Heladería",
      subtitle: "Heladeía Don Benny",
      image:
          "http://deliverapp.sedi.pe/deliveryapp/upload/images/3893-2020-10-12.png"),
];