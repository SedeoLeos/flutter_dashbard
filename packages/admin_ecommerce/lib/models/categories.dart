import 'package:cloud_firestore/cloud_firestore.dart';

class CategoriesModel {
  static const ID = "id";
  static const CATEGORY = "category";

  late String _id;
  late String _category;

//  getters
  String get category => _category;
  String get id => _id;

  CategoriesModel.fromSnapshot(DocumentSnapshot snapshot) {
    final data = snapshot.data() as Map<String, dynamic>;
    _category = data[CATEGORY];
    _id = data[ID];
  }
}
