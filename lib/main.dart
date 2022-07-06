import 'package:badges/badges.dart';
import 'package:custom_navigation_bar/custom_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:project_curtain/constants/constants.dart';
import 'package:project_curtain/model/model_provider/customers.dart';
import 'package:project_curtain/page/contact.dart';
import 'package:project_curtain/page/customer_screen.dart';
import 'package:project_curtain/page/home_screen.dart';
import 'package:project_curtain/page/order_screen.dart';
import 'package:project_curtain/page/product_screen.dart';
import 'package:project_curtain/page/receipt_screen.dart';
import 'package:project_curtain/page/setting_screen.dart';
import 'package:provider/provider.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'model/model_provider/order.dart';
import 'page/login/login_screen.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp])
      .then((value) => runApp(const MyApp()));
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    //---------------------------------Provider--------------
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<Order>(
            create: (BuildContext context) => Order()),
        ChangeNotifierProvider<Customers>(
            create: (BuildContext context) => Customers())
      ],
      child: MaterialApp(
        builder: (context, widget) => ResponsiveWrapper.builder(
            BouncingScrollWrapper.builder(context, widget!),
            maxWidth: 1200,
            minWidth: 450,
            defaultScale: true,
            breakpoints: const [
              ResponsiveBreakpoint.resize(600, name: MOBILE),
              ResponsiveBreakpoint.autoScale(800, name: TABLET),
              ResponsiveBreakpoint.resize(1000, name: DESKTOP),
            ],
            background: Container(color: const Color(0xFFF5F5F5))),
        home: const LoginScreen(),
        debugShowCheckedModeBanner: false,
      ),
    );

    // return const MaterialApp(home: TabsScreen());
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
  bool showElevatedButtonBadge = true;

  final _homeScreen = GlobalKey<NavigatorState>();
  final _productScreen = GlobalKey<NavigatorState>();
  final _orderScreen = GlobalKey<NavigatorState>();
  final _receiptScreen = GlobalKey<NavigatorState>();
  final _customerScreen = GlobalKey<NavigatorState>();
  final _settingScreen = GlobalKey<NavigatorState>();

  Order order = Order();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 2,
          backgroundColor: lightGray,
          leading: Image.asset('assets/logos/logo.png'),
          actions: [
            Row(
              children: [
                TextButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const Contack()));
                  },
                  child: Text(
                    'ช่องทางการติดต่อ',
                    style:
                        GoogleFonts.kanit(color: lightGray, fontSize: bodytext),
                  ),
                ),
                IconButton(
                    onPressed: () async {
                      SharedPreferences prefs =
                          await SharedPreferences.getInstance();
                      prefs.remove('token');
                      Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (BuildContext ctx) =>
                                  const LoginScreen()));
                    },
                    icon: const Icon(
                      Icons.logout,
                      color: lightGray,
                    ))
              ],
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
        bottomNavigationBar: CustomNavigationBar(
          bubbleCurve: Curves.ease,
          scaleFactor: 0.2,
          iconSize: 24.0,
          selectedColor: Colors.black,
          strokeColor: Colors.black,
          unSelectedColor: greyiconNavigate,
          backgroundColor: lightGray,
          items: [
            CustomNavigationBarItem(
              icon: const Icon(Icons.home),
              title: Text(
                "HOME",
                style: GoogleFonts.kanit(
                    fontSize: navigatetext, color: greyiconNavigate),
              ),
            ),
            CustomNavigationBarItem(
              icon: const Icon(Icons.all_inbox),
              title: Text("PRODUCTS",
                  style: GoogleFonts.kanit(
                      fontSize: navigatetext, color: greyiconNavigate)),
            ),
            CustomNavigationBarItem(
              icon: Badge(
                badgeContent: Text(context.watch<Order>().ordercart.toString()),
                showBadge: isempty(),
                child: const Icon(
                  Icons.receipt,
                ),
              ),
              title: Text("ORDERS",
                  style: GoogleFonts.kanit(
                      fontSize: navigatetext, color: greyiconNavigate)),
            ),
            CustomNavigationBarItem(
              icon: const Icon(Icons.receipt_long),
              title: Text("CHECK",
                  style: GoogleFonts.kanit(
                      fontSize: navigatetext, color: greyiconNavigate)),
            ),
            CustomNavigationBarItem(
              icon: const Icon(Icons.people),
              title: Text("CUSTOMERS",
                  style: GoogleFonts.kanit(
                      fontSize: navigatetext, color: greyiconNavigate)),
            ),
            CustomNavigationBarItem(
              icon: const Icon(Icons.settings),
              title: Text("SETTING",
                  style: GoogleFonts.kanit(
                      fontSize: navigatetext, color: greyiconNavigate)),
            ),
          ],
          currentIndex: _currentIndex,
          onTap: (index) {
            setState(() {
              _currentIndex = index;
            });
          },
        ));
  }

  bool isempty() {
    if (order.ordercart.toString() == '0') {
      return showElevatedButtonBadge = false;
    } else {
      return showElevatedButtonBadge = true;
    }
  }
}
