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
import 'package:project_curtain/test/test.dart';

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

    return const MaterialApp(home: IndexScreen());
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
    const OrderScreen(),
    const ReceiptScreen(),
    const CustomerScreen(),
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
                      MaterialPageRoute(builder: (context) => const Contack()));
                },
                child: Text(
                  'ช่องทางการติดต่อ',
                  style:
                      GoogleFonts.kanit(color: Colors.grey, fontSize: bodytext),
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
            selectedLabelStyle: GoogleFonts.kanit(),
            unselectedLabelStyle: GoogleFonts.kanit(),
          )),
    );
  }
}

// import 'package:flutter/material.dart';

// import 'test/state_management.dart';

// void main() {
//   runApp(MyApp());
// }

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         body: HomePage(),
//       ),
//     );
//   }
// }

// class HomePage extends StatefulWidget {
//   const HomePage({Key? key}) : super(key: key);

//   @override
//   State<HomePage> createState() => _HomePageState();
// }

// class _HomePageState extends State<HomePage> {
//   final stateManager = HomePageManager();

//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       children: [
//         SizedBox(height: 50),
//         Center(
//           child: Wrap(
//             spacing: 50,
//             alignment: WrapAlignment.center,
//             children: [
//               ElevatedButton(
//                 onPressed: stateManager.makeGetRequest,
//                 child: Text('GET'),
//               ),
//               ElevatedButton(
//                 onPressed: stateManager.makePostRequest,
//                 child: Text('POST'),
//               ),
//               ElevatedButton(
//                 onPressed: stateManager.makePutRequest,
//                 child: Text('PUT'),
//               ),
//               ElevatedButton(
//                 onPressed: stateManager.makePatchRequest,
//                 child: Text('PATCH'),
//               ),
//               ElevatedButton(
//                 onPressed: stateManager.makeDeleteRequest,
//                 child: Text('DELETE'),
//               ),
//             ],
//           ),
//         ),
//         SizedBox(height: 20),
//         ValueListenableBuilder<RequestState>(
//           valueListenable: stateManager.resultNotifier,
//           builder: (context, requestState, child) {
//             if (requestState is RequestLoadInProgress) {
//               return CircularProgressIndicator();
//             } else if (requestState is RequestLoadSuccess) {
//               return Expanded(
//                   child: SingleChildScrollView(child: Text(requestState.body)));
//             } else {
//               return Container();
//             }
//           },
//         ),
//       ],
//     );
//   }
// }

// import 'dart:async';
// import 'dart:convert';

// import 'package:flutter/material.dart';
// import 'package:http/http.dart' as http;
// import 'package:project_curtain/test/test2/post_model_2.dart';

// Future<List<Post>> fetchPost() async {
//   final response =
//       await http.get(Uri.parse('https://jsonplaceholder.typicode.com/posts'));

//   if (response.statusCode == 200) {
//     final parsed = json.decode(response.body).cast<Map<String, dynamic>>();

//     return parsed.map<Post>((json) => Post.fromMap(json)).toList();
//   } else {
//     throw Exception('Failed to load album');
//   }
// }

// void main() => runApp(const MyApp());

// class MyApp extends StatefulWidget {
//   const MyApp({Key? key}) : super(key: key);

//   @override
//   _MyAppState createState() => _MyAppState();
// }

// class _MyAppState extends State<MyApp> {
//   late Future<List<Post>> futurePost;

//   @override
//   void initState() {
//     super.initState();
//     futurePost = fetchPost();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Fetch Data Example',
//       theme: ThemeData(
//         primaryColor: Colors.lightBlueAccent,
//       ),
//       home: Scaffold(
//         appBar: AppBar(
//           title: const Text('Fetch Data Example'),
//         ),
//         body: FutureBuilder<List<Post>>(
//           future: futurePost,
//           builder: (context, snapshot) {
//             if (snapshot.hasData) {
//               return ListView.builder(
//                 itemCount: snapshot.data!.length,
//                 itemBuilder: (_, index) => Container(
//                   margin:
//                       const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
//                   padding: const EdgeInsets.all(20.0),
//                   decoration: BoxDecoration(
//                     color: const Color(0xff97FFFF),
//                     borderRadius: BorderRadius.circular(15.0),
//                   ),
//                   child: Column(
//                     mainAxisAlignment: MainAxisAlignment.start,
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                       Text(
//                         "${snapshot.data![index].title}",
//                         style: const TextStyle(
//                           fontSize: 18.0,
//                           fontWeight: FontWeight.bold,
//                         ),
//                       ),
//                       const SizedBox(height: 10),
//                       Text("${snapshot.data![index].body}"),
//                     ],
//                   ),
//                 ),
//               );
//             } else {
//               return const Center(child: CircularProgressIndicator());
//             }
//           },
//         ),
//       ),
//     );
//   }
// }
