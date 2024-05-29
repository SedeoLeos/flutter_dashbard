import 'package:cloud_firestore/cloud_firestore.dart';

class ProductModel {
  static const ID = "id";
  static const NAME = "name";
  static const PICTURE = "picture";
  static const PRICE = "price";
  static const DESCRIPTION = "description";
  static const CATEGORY = "category";
  static const FEATURED = "featured";
  static const QUANTITY = "quantity";
  static const BRAND = "brand";
  static const SALE = "sale";
  static const SIZES = "sizes";
  static const COLORS = "colors";

  late String _id;
  late String _name;
  late String _picture;
  late String _description;
  late String _category;
  late String _brand;
  late int _quantity;
  late int _price;
  late bool _sale;
  late bool _featured;
  late List _colors;
  late List _sizes;

  String get id => _id;

  String get name => _name;

  String get picture => _picture;

  String get brand => _brand;

  String get category => _category;

  String get description => _description;

  int get quantity => _quantity;

  int get price => _price;

  bool get featured => _featured;

  bool get sale => _sale;

  List get colors => _colors;

  List get sizes => _sizes;

  ProductModel.fromSnapshot(DocumentSnapshot snapshot) {
    final data = snapshot.data() as Map<String,dynamic>;
    _id =data[ID];
    _brand =data[BRAND];
    _sale =data[SALE];
    _description =data[DESCRIPTION] ?? " ";
    _featured =data[FEATURED];
    _price =data[PRICE].floor();
    _category =data[CATEGORY];
    _colors =data[COLORS];
    _sizes =data[SIZES];
    _name =data[NAME];
    _picture =data[PICTURE];
    _quantity =data[QUANTITY];
  }
}
