import 'package:flutter/material.dart';

class Order extends ChangeNotifier {
  static List<Map<String, String>> orderlistmap = [
    {
      'titlename': 'คุณ เณร หลวงพ่อ',
      'productname': 'ม่านสองชั้น ผ้าทึบหน้าแคบ Acacia',
      'productid': 'A01CY04',
      'productcolor': 'CY 228/01',
      'productsize': '100 x 200',
      'price': '400',
      'image': 'assets/images/curtain.png',
      'ischeck': 'false'
    },
    {
      'titlename': 'คุณ พ่อ หลวงเณร',
      'productname': 'ม่านสองชั้น ผ้าทึบหน้ากว้าง Akakia',
      'productid': 'A01CY08',
      'productcolor': 'CY 228/01',
      'productsize': '100 x 300',
      'price': '600',
      'image': 'assets/images/curtain.png',
      'ischeck': 'false'
    },
    {
      'titlename': 'คุณ หลวงตา พ่อโยม',
      'productname': 'ม่านสองชั้น ผ้าทึบหน้าแคบ Acacia',
      'productid': 'A01CY09',
      'productcolor': 'CY 229/01',
      'productsize': '300 x 200',
      'price': '1500',
      'image': 'assets/images/curtain.png',
      'ischeck': 'false'
    },
  ];

  void ordercreate(List<Map<String, String>> temp) {
    orderlistmap.insertAll(0, temp);
    notifyListeners();
  }

  dynamic get ordercart {
    int order = orderlistmap.length;
    return order;
  }

  void removeorder(index) {
    orderlistmap.removeAt(index);
    notifyListeners();
  }

  static int countcheck() {
    int counter = 0;
    for (int i = 0; i < orderlistmap.length; i++) {
      if (orderlistmap[i]['ischeck'] == 'true') counter++;
    }
    return counter;
  }

  static bool isallcheck() {
    if (orderlistmap.isEmpty == false) {
      for (int i = 0; i < orderlistmap.length; i++) {
        if (orderlistmap[i]['ischeck'] == 'false') {
          return false;
        }
      }
    } else {
      return false;
    }
    return true;
  }

  static void allcheck(bool istrue) {
    if (istrue == true) {
      for (int i = 0; i < orderlistmap.length; i++) {
        orderlistmap[i]['ischeck'] = 'true';
      }
    } else {
      for (int i = 0; i < orderlistmap.length; i++) {
        orderlistmap[i]['ischeck'] = 'false';
      }
    }
  }

  static int totalprice() {
    int total = 0;
    for (int i = 0; i < orderlistmap.length; i++) {
      if (orderlistmap[i]['ischeck'] == 'true') {
        total += int.parse(orderlistmap[i]['price'].toString());
      }
    }
    return total;
  }
}
