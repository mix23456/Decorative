import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:project_curtain/contack.dart';
import 'package:project_curtain/login_page.dart';
import 'package:project_curtain/constants.dart';
import 'package:project_curtain/screen/map/map.dart';
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

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    // return MaterialApp(home: LoginScreen());

    // return const MaterialApp(
    //   title: MyApp._title,
    //   home: Test1(),
    // );

    // return MaterialApp(home: Map());

    return const MaterialApp(home: TabsScreen());
  }
}

/////////////////////////////////////////////////////////////////////////
class TabsScreen extends StatefulWidget {
  const TabsScreen({Key? key}) : super(key: key);

  @override
  _TabsScreenState createState() => _TabsScreenState();
}

class _TabsScreenState extends State<TabsScreen> {
  int _currentIndex = 0;

  final _homeScreen = GlobalKey<NavigatorState>();
  final _productScreen = GlobalKey<NavigatorState>();
  final _orderScreen = GlobalKey<NavigatorState>();
  final _receiptScreen = GlobalKey<NavigatorState>();
  final _customerScreen = GlobalKey<NavigatorState>();
  final _settingScreen = GlobalKey<NavigatorState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 2,
        backgroundColor: Colors.grey[300],
        leading: Image.asset('assets/logos/logo.png'),
        actions: [
          TextButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const Contack()));
            },
            child: Text(
              'ช่องทางการติดต่อ',
              style: GoogleFonts.kanit(color: Colors.grey, fontSize: bodytext),
            ),
          ),
        ],
      ),
      body: IndexedStack(
        index: _currentIndex,
        children: <Widget>[
          Navigator(
            key: _homeScreen,
            onGenerateRoute: (route) => MaterialPageRoute(
              settings: route,
              builder: (context) => const HomeScreen(),
            ),
          ),
          Navigator(
            key: _productScreen,
            onGenerateRoute: (route) => MaterialPageRoute(
              settings: route,
              builder: (context) => const ProductScreen(),
            ),
          ),
          Navigator(
            key: _orderScreen,
            onGenerateRoute: (route) => MaterialPageRoute(
              settings: route,
              builder: (context) => const OrderScreen(),
            ),
          ),
          Navigator(
            key: _receiptScreen,
            onGenerateRoute: (route) => MaterialPageRoute(
              settings: route,
              builder: (context) => const ReceiptScreen(),
            ),
          ),
          Navigator(
            key: _customerScreen,
            onGenerateRoute: (route) => MaterialPageRoute(
              settings: route,
              builder: (context) => const CustomerScreen(),
            ),
          ),
          Navigator(
            key: _settingScreen,
            onGenerateRoute: (route) => MaterialPageRoute(
              settings: route,
              builder: (context) => const SettingScreen(),
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: _currentIndex,
        onTap: (val) => _onTap(val, context),
        backgroundColor: Colors.grey[300],
        selectedItemColor: Colors.black,
        selectedLabelStyle: GoogleFonts.kanit(),
        unselectedLabelStyle: GoogleFonts.kanit(),
        items: const [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
              size: 24,
            ),
            label: "HOME",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.all_inbox,
              size: 24,
            ),
            label: "PROSDUCTS",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.receipt,
              size: 24,
            ),
            label: "ORDERS",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.receipt_long,
              size: 24,
            ),
            label: "CHECK",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.people,
              size: 24,
            ),
            label: "CUSTOMERS",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.settings,
              size: 24,
            ),
            label: "SETTING",
          ),
        ],
      ),
    );
  }

  void _onTap(int val, BuildContext context) {
    if (_currentIndex == val) {
      switch (val) {
        case 0:
          _homeScreen.currentState!.popUntil((route) => route.isFirst);
          break;
        case 1:
          _productScreen.currentState!.popUntil((route) => route.isFirst);
          break;
        case 2:
          _orderScreen.currentState!.popUntil((route) => route.isFirst);
          break;
        case 3:
          _receiptScreen.currentState!.popUntil((route) => route.isFirst);
          break;
        case 4:
          _customerScreen.currentState!.popUntil((route) => route.isFirst);
          break;
        case 5:
          _settingScreen.currentState!.popUntil((route) => route.isFirst);
          break;
        default:
      }
    } else {
      if (mounted) {
        setState(() {
          _currentIndex = val;
        });
      }
    }
  }
}
