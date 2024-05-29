import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:slaega_admin_ecommerce/helpers/costants.dart';
import 'package:slaega_admin_ecommerce/models/orders.dart';

class OrderServices {
  String collection = "orders";

  Future<List<OrderModel>> getAllOrders() async =>
      firebaseFiretore.collection(collection).get().then((result) {
        List<OrderModel> orders = [];
        for (DocumentSnapshot order in result.docs) {
          orders.add(OrderModel.fromSnapshot(order));
        }
        return orders;
      });
}
