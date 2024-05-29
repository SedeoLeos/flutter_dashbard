import 'package:cloud_firestore/cloud_firestore.dart';

class BrandModel {
  static const ID = "id";
  static const BRAND = "brand";

  late String _id;
  late String _brand;

  // Getters
  String get brand => _brand;
  String get id => _id;

  // Constructor to create a BrandModel from a Firestore snapshot
  BrandModel.fromSnapshot(DocumentSnapshot snapshot) {
    final data = snapshot.data() as Map<String, dynamic>;
    _brand = data[BRAND];
    _id = data[ID];
  }
}
