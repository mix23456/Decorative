import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:project_curtain/login_page.dart';
import 'package:project_curtain/screen/page/customer_screen.dart';
import 'package:project_curtain/screen/page/home_screen.dart';
import 'package:project_curtain/screen/page/order_screen.dart';
import 'package:project_curtain/screen/page/product_screen.dart';
import 'package:project_curtain/screen/page/receipt_screen.dart';

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
    const Center(child: Text('ตั้งค่า', style: TextStyle(fontSize: 40))),
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 6,
      child: Scaffold(
          appBar: AppBar(
            elevation: 2,
            backgroundColor: Colors.grey[300],
            leading: IconButton(
              onPressed: () {},
              icon: Image.asset('assets/logos/logo.png'),
            ),
            actions: [
              TextButton(
                onPressed: () {},
                child: Text(
                  'ช่องทางการติดต่อ',
                  style: GoogleFonts.kanit(color: Colors.grey),
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
                icon: Icon(Icons.home),
                label: "หน้าแรก",
                backgroundColor: Colors.blue,
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.all_inbox),
                label: "สินค้า",
                backgroundColor: Colors.blue,
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.people),
                label: "ลูกค้า",
                backgroundColor: Colors.blue,
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.receipt),
                label: "ออเดอร์",
                backgroundColor: Colors.blue,
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.receipt_long),
                label: "ใบเสร็จ",
                backgroundColor: Colors.blue,
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.settings),
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
