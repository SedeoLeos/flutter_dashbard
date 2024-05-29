import 'package:slaega_admin_ecommerce/helpers/enumerators.dart';
import 'package:slaega_admin_ecommerce/models/orders.dart';
import 'package:slaega_admin_ecommerce/services/orders.dart';
import 'package:flutter/material.dart';

class AppProvider with ChangeNotifier {
  late DisplayedPage currentPage;
  OrderServices _orderServices = OrderServices();
  late OrderModel _orderModel;
  double revenue = 0;

  AppProvider.init() {
    _getRevenue();
    changeCurrentPage(DisplayedPage.HOME);
  }

  changeCurrentPage(DisplayedPage newPage) {
    currentPage = newPage;
    notifyListeners();
  }

  void _getRevenue() async {
    await _orderServices.getAllOrders().then((orders) {
      for (OrderModel order in orders) {
        revenue = revenue + order.total;
        print("======= TOTAL REVENUE: ${revenue.toString()}");
        print("======= TOTAL REVENUE: ${revenue.toString()}");
        print("======= TOTAL REVENUE: ${revenue.toString()}");
      }
      notifyListeners();
    });
  }
}
