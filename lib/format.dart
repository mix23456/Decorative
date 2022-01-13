import 'dart:io';

import 'package:intl/intl.dart';

class GoogleSignInApi {
  static formatNumber(x) => NumberFormat("#,##0.00", "en_US").format(x);

  static calculateRow(int x, bool isDoc) {
    var newItem = x;
    if (x.isOdd) {
      newItem = newItem + 1;
    }
    var iosHigh = Platform.isIOS ? 2.2 : 2;
    var newDy = isDoc ? 2 : iosHigh;
    return newItem / newDy;
  }

  static phoneFormat(newData) {
    var phone = newData ?? '0888888888';
    var newFormat =
        "${phone[0]}${phone[1]}${phone[2]}-${phone[3]}${phone[4]}${phone[5]}-${phone[6]}${phone[7]}${phone[8]}${phone[9]}";
    return newFormat;
  }

  static validateEmail(String? value) {
    String pattern =
        r"^[a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9](?:[a-zA-Z0-9-]"
        r"{0,253}[a-zA-Z0-9])?(?:\.[a-zA-Z0-9](?:[a-zA-Z0-9-]"
        r"{0,253}[a-zA-Z0-9])?)*$";
    RegExp regex = RegExp(pattern);
    if (value == null || value.isEmpty) return 'โปรดระบุอีเมล';
    if (!regex.hasMatch(value)) {
      return 'อีเมลไม่ถูกต้อง';
    } else {
      return null;
    }
  }

  static validatePassport(String? value) {
    bool isNumeric(String? s) {
      return double.tryParse(s!) != null;
    }

    if (value == null || value.isEmpty) {
      return 'โปรดระบุเลขบัตรประชาชนหรือพาสปอร์ต';
    }
    if (isNumeric(value) && value.length < 13) {
      return 'เลขบัตรประชาชนไม่ถูกต้อง';
    }
    if (value.isNotEmpty && value.length < 9) {
      return 'เลขพาสปอร์ตไม่ถูกต้อง';
    } else {
      return null;
    }
  }
}
