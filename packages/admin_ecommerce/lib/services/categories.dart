import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:slaega_admin_ecommerce/helpers/costants.dart';
import 'package:slaega_admin_ecommerce/models/categories.dart';

class CategoriesServices {
  String collection = "categories";

  Future<List<CategoriesModel>> getAll() async =>
      firebaseFiretore.collection(collection).get().then((result) {
        List<CategoriesModel> categories = [];
        for (DocumentSnapshot category in result.docs) {
          categories.add(CategoriesModel.fromSnapshot(category));
        }
        return categories;
      });
}
