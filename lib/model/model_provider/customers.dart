import 'package:flutter/material.dart';

class Customers extends ChangeNotifier {
  static String? customerselected = 'ชื่อลูกค้า';
  static List<Map<String, dynamic>> customersinfo = [
    {
      'name': 'mix',
      'surname': '',
      'nickname': '',
      'email': '',
      'id': '',
      'corporate': '',
      'phone': '',
      'location': '',
      'subdistict': '',
      'distict': '',
      'province': '',
      'postnumber': '',
      'lat': '',
      'long': '',
      //---------------ที่อยู่ในใบเสร็จ
      'secondlocation': '',
      'secondsubdistict': '',
      'seconddistict': '',
      'secondprovince': '',
      'secondpostnumber': '',
      //----------สถานที่ติดตั้งผ้าม่าน
      'workname': '',
      'workphone': '',
      'worklocation': '',
      'worksubdistict': '',
      'workdistict': '',
      'workprovince': '',
      'workpostnumber': '',
      'worklat': '',
      'worklong': ''
    },
  ];

  dynamic get length {
    int customers = customersinfo.length;
    return customers;
  }

  void setdefaulCustomerselect() {
    customerselected = 'ชื่อลูกค้า';
  }

  setname(String data) {
    customerselected = data;
    notifyListeners();
  }

  String? getname() => customerselected;
  String? getnamefromlist(index) => customersinfo[index]['name'];
  Map? getInfo(index) => customersinfo[index];

  void customercreate(List<Map<String, String>> temp) {
    customersinfo.addAll(temp);
    notifyListeners();
  }

  updateCustomer(key, val) {
    var element =
        customersinfo.firstWhere((k) => k.keys.contains(key), orElse: () => {});
    var index = customersinfo.indexOf(element);
    element.update(key, (v) => val);
    customersinfo[index] = element;
    notifyListeners();
  }
}
