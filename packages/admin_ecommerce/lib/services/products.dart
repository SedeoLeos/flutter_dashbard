import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:slaega_admin_ecommerce/helpers/costants.dart';
import 'package:slaega_admin_ecommerce/models/products.dart';

class ProductsServices {
  String collection = "products";

  Future<List<ProductModel>> getAllProducts() async =>
      firebaseFiretore.collection(collection).get().then((result) {
        List<ProductModel> products = [];
        for (DocumentSnapshot product in result.docs) {
          products.add(ProductModel.fromSnapshot(product));
        }
        return products;
      });
}
