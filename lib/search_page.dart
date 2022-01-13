import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:project_curtain/style_curtain.dart';
import 'package:project_curtain/title_search.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  _SearchScreenState createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  // TextEditingController _searchcontroller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.brown,
      appBar: AppBar(
        title: Container(
          height: 48,
          width: MediaQuery.of(context).size.width - 80,
          child: TextField(
            autofocus: true,
            // controller: _searchcontroller,
            textInputAction: TextInputAction.search,
            decoration: InputDecoration(
              suffixIcon: IconButton(
                icon: const Icon(Icons.clear),
                color: Colors.white,
                onPressed: () {},
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(30),
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(30),
              ),
            ),
          ),
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                // height: 80,
                decoration: BoxDecoration(
                    shape: BoxShape.rectangle,
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.4),
                        offset: Offset(0, 5),
                        blurRadius: 9.0,
                        // spreadRadius: 0,
                      )
                    ]),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [],
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              const TitleSearch(text: 'หมวดหมู่'),
              // Padding(
              //   padding: const EdgeInsets.symmetric(vertical: 10),
              //   child: StaggeredGridView.countBuilder(
              //     physics: NeverScrollableScrollPhysics(),
              //     crossAxisCount: 2,
              //     itemCount: curtains.length,
              //     mainAxisSpacing: 10,
              //     crossAxisSpacing: 0,
              //     staggeredTileBuilder: (int index) => const StaggeredTile.fit(1),
              //     itemBuilder: (BuildContext context, int index) {
              //       return GestureDetector(
              //         onTap: () {},
              //         child: Container(
              //           height: 84,
              //           width: 105,
              //           margin: EdgeInsets.symmetric(horizontal: 20),
              //           decoration: const BoxDecoration(
              //             borderRadius: BorderRadius.all(Radius.circular(20)),
              //             image: DecorationImage(
              //               fit: BoxFit.fill,
              //               image: NetworkImage(''),
              //             ),
              //           ),
              //         ),
              //       );
              //     },
              //   ),
              // ),
              const SizedBox(height: 16),
            ],
          ),
        ),
      ),
    );
  }
}

// void _cleanSearch() {}

// Widget buildSearch() {
//   return Container(
//     height: 48,
//     width: MediaQuery.of(context).size.width - 80,
//     child: TextField(
//       autofocus: true,
//       controller: _searchcontroller,
//       textInputAction: TextInputAction.search,
//       decoration: InputDecoration(
//         suffixIcon: IconButton(
//           icon: const Icon(Icons.clear),
//           color: Colors.white,
//           onPressed: () {},
//         ),
//         focusedBorder: OutlineInputBorder(
//           borderRadius: BorderRadius.circular(30),
//         ),
//         enabledBorder: OutlineInputBorder(
//           borderRadius: BorderRadius.circular(30),
//         ),
//       ),
//     ),
//   );
// }
