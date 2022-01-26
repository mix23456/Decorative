import 'dart:io';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:project_curtain/contack.dart';
import 'package:project_curtain/login_page.dart';
import 'package:project_curtain/screen/page/customer_screen.dart';
import 'package:project_curtain/screen/page/home_screen.dart';
import 'package:project_curtain/screen/page/order_screen.dart';
import 'package:project_curtain/screen/page/product_screen.dart';
import 'package:project_curtain/screen/page/receipt_screen.dart';
import 'package:project_curtain/screen/page/setting_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  static const String _title = 'test';

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    // return MaterialApp(home: LoginScreen());
    return const MaterialApp(title: MyApp._title, home: IndexScreen());
  }
}

/////////////////////////////////////////////////////////////////////////

class IndexScreen extends StatefulWidget {
  const IndexScreen({Key? key}) : super(key: key);

  @override
  _IndexScreenState createState() => _IndexScreenState();
}

class _IndexScreenState extends State<IndexScreen> {
  int currenIndex = 0;
  final screens = [
    const HomeScreen(),
    const ProductScreen(),
    const CustomerScreen(),
    const OrderScreen(),
    const ReceiptScreen(),
    const SettingScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 6,
      child: Scaffold(
          appBar: AppBar(
            elevation: 2,
            backgroundColor: Colors.grey[300],
            leading: Image.asset('assets/logos/logo.png'),
            actions: [
              TextButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Contack()));
                },
                child: Text(
                  'ช่องทางการติดต่อ',
                  style: GoogleFonts.kanit(color: Colors.grey, fontSize: 16),
                ),
              ),
            ],
          ),
          body: screens[currenIndex],
          bottomNavigationBar: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            backgroundColor: Colors.grey[300],
            selectedItemColor: Colors.black,
            onTap: (index) => setState(() => currenIndex = index),
            currentIndex: currenIndex,
            items: const [
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.home,
                  size: 24,
                ),
                label: "หน้าแรก",
                backgroundColor: Colors.blue,
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.all_inbox,
                  size: 24,
                ),
                label: "สินค้า",
                backgroundColor: Colors.blue,
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.people,
                  size: 24,
                ),
                label: "ลูกค้า",
                backgroundColor: Colors.blue,
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.receipt,
                  size: 24,
                ),
                label: "ออเดอร์",
                backgroundColor: Colors.blue,
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.receipt_long,
                  size: 24,
                ),
                label: "ใบเสร็จ",
                backgroundColor: Colors.blue,
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.settings,
                  size: 24,
                ),
                label: "ตั้งค่า",
                backgroundColor: Colors.blue,
              ),
            ],
            selectedLabelStyle: GoogleFonts.kanit(),
            unselectedLabelStyle: GoogleFonts.kanit(),
          )
          // const TabBarView(
          //   children: [
          //     Center(
          //       child: Text('HOME'),
          //     ),
          //     ProductScreen(),
          //     // Center(
          //     //   child: Text('PRODUCT'),
          //     // ),
          //     Center(
          //       child: Text('CUSTOMER'),
          //     ),
          //     Center(
          //       child: Text('ORDER'),
          //     ),
          //     Center(
          //       child: Text('RECEIPT'),
          //     ),
          //     Center(
          //       child: Text('SETTING'),
          //     ),
          //   ],
          // ),
          ),
    );
  }
}
