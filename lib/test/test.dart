import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'exchange_rate.dart';
import 'product.dart';

class Test1 extends StatefulWidget {
  const Test1({Key? key}) : super(key: key);

  @override
  _Test1State createState() => _Test1State();
}

class _Test1State extends State<Test1> {
  late ExchangeRate _dataFromAPI;
  @override
  void initState() {
    super.initState();
    getExchangeRate();
  }

  Future<ExchangeRate> getExchangeRate() async {
    var url = Uri.parse('https://api.exchangerate-api.com/v4/latest/THB');
    var response = await http.get(url);
    _dataFromAPI = exchangeRateFromJson(response.body);
    return _dataFromAPI;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
      ),
      body: Center(
        child: FutureBuilder(
            future: getExchangeRate(),
            builder: (BuildContext context, AsyncSnapshot<dynamic> snapshot) {
              if (snapshot.connectionState == ConnectionState.done) {
                var result = snapshot.data;
                double amount = 10000;
                return Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    children: [
                      Product(
                          titel: 'ยอดคงเหลือ',
                          amount: amount,
                          color: Colors.lightBlue,
                          size: 120),
                      const SizedBox(height: 5),
                      Product(
                          titel: 'USD',
                          amount: amount * result.rates["USD"],
                          color: Colors.green,
                          size: 120),
                      const SizedBox(height: 5),
                      Product(
                          titel: 'EUR',
                          amount: amount * result.rates["EUR"],
                          color: Colors.red,
                          size: 120),
                      const SizedBox(height: 5),
                      Product(
                          titel: 'GBP',
                          amount: amount * result.rates["GBP"],
                          color: Colors.pink,
                          size: 120),
                      const SizedBox(height: 5),
                    ],
                  ),
                );
              }
              return const CircularProgressIndicator();
            }),
      ),
    );
  }
}

// ignore_for_file: avoid_print

// import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';
// import 'package:http/http.dart' as http;
// import 'package:project_curtain/covid_today_result.dart';
// import 'package:project_curtain/list_user.dart';

// class Test1 extends StatefulWidget {
//   const Test1({Key? key}) : super(key: key);

//   @override
//   State<Test1> createState() => _Test1State();
// }

// class _Test1State extends State<Test1> {
//   CovidToDayResult? _dataFromWebAPI;
//   @override
//   void initState() {
//     super.initState();

//     print('inti State');
//     getData();
//   }

//   Future<void> getData() async {
//     print('get DATA');
//     var url =
//         Uri.parse('https://covid19.ddc.moph.go.th/api/Cases/today-cases-all');
//     var response = await http.get(url);

//     print(response.body);
//     setState(() {
//       var _dataFromWebAPI = covidToDayResultFromJson(response.body);
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     print('build');
//     return Scaffold(
//       appBar: AppBar(),
//       body: ListView(
//         children: <Widget>[
//           ListTile(
//             title: Text(
//               'ผู้ติดเชื่อสะสม',
//               style: GoogleFonts.kanit(),
//             ),
//             subtitle: Text('0', style: GoogleFonts.kanit()),
//             // subtitle: Text('${_dataFromWebAPI?.totalCase}',
//             //     style: GoogleFonts.kanit()),
//           ),
//           ListTile(
//             title: Text(
//               'หายแล้ว',
//               style: GoogleFonts.kanit(),
//             ),
//             subtitle: Text(
//               '${_dataFromWebAPI?.totalRecovered}',
//               style: GoogleFonts.kanit(),
//             ),
//           ),
//           ListTile(
//             title: Text(
//               'รักษาอยู่ในโรงพยาบาล',
//               style: GoogleFonts.kanit(),
//             ),
//             subtitle: Text(
//               '${_dataFromWebAPI?.totalCaseExcludeabroad}',
//               style: GoogleFonts.kanit(),
//             ),
//           ),
//           ListTile(
//             title: Text(
//               'เสียชีวิต',
//               style: GoogleFonts.kanit(),
//             ),
//             subtitle: Text(
//               '${_dataFromWebAPI?.totalDeath}',
//               style: GoogleFonts.kanit(),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }

// import 'dart:convert';
// import 'dart:io';

// import 'package:flutter/material.dart';

// class Test1 extends StatefulWidget {
//   const Test1({Key? key}) : super(key: key);

//   @override
//   State<Test1> createState() => _Test1State();
// }

// class _Test1State extends State<Test1> {
//   List _loadedPhotos = [];

//   Future<void> _fetchData() async {
//     const API_URL = 'https://jsonplaceholder.typicode.com/photos';

//     HttpClient client = HttpClient();
//     client.autoUncompress = true;

//     final HttpClientRequest request = await client.getUrl(Uri.parse(API_URL));
//     request.headers
//         .set(HttpHeaders.contentTypeHeader, "application/json; charset=UTF-8");
//     final HttpClientResponse response = await request.close();

//     final String content = await response.transform(utf8.decoder).join();
//     final List data = json.decode(content);

//     setState(() {
//       _loadedPhotos = data;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         appBar: AppBar(),
//         body: SafeArea(
//             child: _loadedPhotos.length == 0
//                 ? Center(
//                     child: ElevatedButton(
//                       child: Text('Load Photos'),
//                       onPressed: _fetchData,
//                     ),
//                   )
//                 // The ListView that displays photos
//                 : ListView.builder(
//                     itemExtent: 100,
//                     itemCount: _loadedPhotos.length,
//                     itemBuilder: (BuildContext ctx, index) {
//                       return ListTile(
//                         leading: Image.network(
//                           _loadedPhotos[index]["thumbnailUrl"],
//                           width: 150,
//                           fit: BoxFit.cover,
//                         ),
//                         title: Text(_loadedPhotos[index]['title']),
//                         subtitle:
//                             Text('Photo ID: ${_loadedPhotos[index]["id"]}'),
//                       );
//                     },
//                   )));
//   }
// }

