import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:project_curtain/screen/constants/constants.dart';
import 'package:flutter_multi_formatter/formatters/money_input_formatter.dart';
import 'package:project_curtain/format.dart';

class DetailScreen extends StatefulWidget {
  const DetailScreen({Key? key}) : super(key: key);

  @override
  _DetailScreenState createState() => _DetailScreenState();
}

final List<String> imgList = [
  'https://images.unsplash.com/photo-1520342868574-5fa3804e551c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=6ff92caffcdd63681a35134a6770ed3b&auto=format&fit=crop&w=1951&q=80',
  'https://images.unsplash.com/photo-1522205408450-add114ad53fe?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=368f45b0888aeb0b7b08e3a1084d3ede&auto=format&fit=crop&w=1950&q=80',
  'https://images.unsplash.com/photo-1519125323398-675f0ddb6308?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=94a1e718d89ca60a6337a6008341ca50&auto=format&fit=crop&w=1950&q=80',
  'https://images.unsplash.com/photo-1523205771623-e0faa4d2813d?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=89719a0d55dd05e2deae4120227e6efc&auto=format&fit=crop&w=1953&q=80',
];

final List<Widget> imageSliders = imgList
    .map((item) => Container(
          margin: const EdgeInsets.all(5.0),
          child: ClipRRect(
              borderRadius: const BorderRadius.all(Radius.circular(5.0)),
              child: Stack(
                children: <Widget>[
                  Image.network(item, fit: BoxFit.cover, width: 1000.0),
                ],
              )),
        ))
    .toList();
int _current = 0;
final CarouselController _controller = CarouselController();
int numOfItem = 1;
int selectImage = 0;
bool isCheck = false;

var curtain = ['ผ้าม่านตาไก่', 'ผ้าม่านจับ', 'ผ้าม่านลอน'];
String? dropdownValue;
double check = 2.8;
double result = 0;
double height = 0;
bool isChecked = false;
dynamic _cloth = 1;
int a = 0;
final TextEditingController widthController = TextEditingController();
final TextEditingController priceController = TextEditingController();
final TextEditingController heightController = TextEditingController();

class _DetailScreenState extends State<DetailScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.white,
          leading: IconButton(
              onPressed: () {
                setState(() {
                  Navigator.pop(context);
                });
              },
              icon: const Icon(
                Icons.arrow_back_ios,
                color: Colors.black,
              )),
          centerTitle: true,
          title: Text(
            'PRODUCT',
            style: GoogleFonts.kanit(color: Colors.black, fontSize: subtitel),
          ),
          actions: [
            IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.search,
                  color: Colors.black,
                ))
          ]),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              SizedBox(
                width: 453,
                child: AspectRatio(
                  aspectRatio: 1,
                  child: Image.network(
                    'https://images.unsplash.com/photo-1520342868574-5fa3804e551c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=6ff92caffcdd63681a35134a6770ed3b&auto=format&fit=crop&w=1951&q=80',
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: IconButton(
                        onPressed: previous,
                        icon: const Icon(Icons.arrow_back_ios_new),
                        color: colortext1,
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: defaultPadding,
                  ),
                  ...List.generate(
                    imgList.length,
                    (index) => buildSmallPreview(index),
                  ),
                  const SizedBox(
                    width: defaultPadding,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Align(
                      alignment: Alignment.centerRight,
                      child: IconButton(
                        onPressed: next,
                        icon: const Icon(Icons.arrow_forward_ios_outlined),
                        color: colortext1,
                      ),
                    ),
                  ),
                ],
              ),
              // SizedBox(
              //   // width: 450,
              //   // height: 200,
              //   child: Column(
              //     children: [
              //       Stack(
              //         children: [
              //           CarouselSlider(
              //             items: imageSliders,
              //             carouselController: _controller,
              //             options: CarouselOptions(
              //                 autoPlay: true,
              //                 enlargeCenterPage: true,
              //                 aspectRatio: 2.0,
              //                 onPageChanged: (index, reason) {
              //                   setState(() {
              //                     _current = index;
              //                   });
              //                 }),
              //           ),
              //           Align(
              //             alignment: Alignment.centerLeft,
              //             child: IconButton(
              //               onPressed: previous,
              //               icon: const Icon(Icons.arrow_back),
              //               // color: Colors.black,
              //             ),
              //           ),
              //           Align(
              //             alignment: Alignment.centerRight,
              //             child: IconButton(
              //               onPressed: next,
              //               icon: const Icon(Icons.arrow_forward),
              //             ),
              //           ),
              //         ],
              //       ),
              //     ],
              //   ),
              // ),

              // Container(
              //     child: CarouselSlider(
              //   options: CarouselOptions(
              //     aspectRatio: 2.0,
              //     enlargeCenterPage: true,
              //     enableInfiniteScroll: false,
              //     initialPage: 2,
              //     autoPlay: true,
              //   ),
              //   items: imageSliders,
              // )),
              // Row(
              //   mainAxisAlignment: MainAxisAlignment.center,
              //   children: imgList.asMap().entries.map((entry) {
              //     return GestureDetector(
              //       onTap: () => _controller.animateToPage(entry.key),
              //       child: Container(
              //         width: 12.0,
              //         height: 12.0,
              //         margin: const EdgeInsets.symmetric(
              //             vertical: 8.0, horizontal: 4.0),
              //         decoration: BoxDecoration(
              //             shape: BoxShape.circle,
              //             color: (Theme.of(context).brightness == Brightness.dark
              //                     ? Colors.white
              //                     : Colors.black)
              //                 .withOpacity(_current == entry.key ? 0.9 : 0.4)),
              //       ),
              //     );
              //   }).toList(),
              // ),
              const SizedBox(height: defaultPadding),
              Text(
                'ม่านสองชั้น',
                style: GoogleFonts.kanit(fontSize: subtitel),
              ),
              const SizedBox(height: defaultPadding),
              Container(
                padding: const EdgeInsets.all(10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Text('เลือกชนิดผ้าม่าน', style: GoogleFonts.kanit(fontSize: bodytext)),
                    // const SizedBox(height: defaultPadding / 2),
                    // DropdownButtonHideUnderline(
                    //   child: DropdownButtonFormField(
                    //     icon: const Icon(Icons.arrow_drop_down),
                    //     decoration: InputDecoration(
                    //       // hintText: 'โปรดเลือก',
                    //       // hintStyle: GoogleFonts.kanit(color: Colors.black),
                    //       enabledBorder: OutlineInputBorder(
                    //           borderSide: const BorderSide(color: Colors.black),
                    //           borderRadius: BorderRadius.circular(30)),
                    //     ),
                    //     onChanged: (String? newValue) {
                    //       setState(() {
                    //         dropdownValue = newValue!;
                    //       });
                    //     },
                    //     items: curtain.map((String item) {
                    //       return DropdownMenuItem(
                    //         value: item,
                    //         child: Text(item, style: GoogleFonts.kanit()),
                    //       );
                    //     }).toList(),
                    //   ),
                    // ),
                    // const SizedBox(height: defaultPadding / 2),
                    // Text('เลือกหน้าผ้า',
                    //     style: GoogleFonts.kanit(fontSize: bodytext)),
                    // const SizedBox(height: defaultPadding / 2),
                    // DropdownButtonHideUnderline(
                    //   child: DropdownButtonFormField(
                    //     decoration: InputDecoration(
                    //         hintText: 'โปรดเลือก',
                    //         hintStyle: GoogleFonts.kanit(color: Colors.black),
                    //         enabledBorder: OutlineInputBorder(
                    //             borderSide:
                    //                 const BorderSide(color: Colors.black),
                    //             borderRadius: BorderRadius.circular(30))),
                    //     value: _cloth,
                    //     onChanged: (value) {
                    //       setState(() {
                    //         _cloth = value;
                    //       });
                    //     },
                    //     items: [
                    //       DropdownMenuItem(
                    //         value: 1,
                    //         child: Text('ผ้าหน้ากว้าง',
                    //             style: GoogleFonts.kanit()),
                    //       ),
                    //       DropdownMenuItem(
                    //         value: 2,
                    //         child:
                    //             Text('ผ้าหน้าแคบ', style: GoogleFonts.kanit()),
                    //       ),
                    //     ],
                    //   ),
                    // ),
                    const SizedBox(height: defaultPadding / 2),
                    Text('ความสูงผ้าม่าน (เมตร)',
                        style: GoogleFonts.kanit(fontSize: bodytext)),
                    const SizedBox(height: defaultPadding / 2),
                    TextField(
                      controller: heightController,
                      onChanged: (value) {
                        if (double.tryParse(value) != null &&
                            int.parse(value.replaceAll('.', '')) <= 26) {
                          setState(() {
                            height = 2.8;
                          });
                        } else {
                          setState(() {
                            height = 3.2;
                          });
                        }
                      },
                      keyboardType: TextInputType.number,
                      textInputAction: TextInputAction.next,
                      inputFormatters: [MoneyInputFormatter()],
                      // inputFormatters: [ThousandsFormatter(allowFraction: true)],
                      decoration: InputDecoration(
                        // errorText: _height.text.replaceAll('.', ''),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                      ),
                    ),
                    const SizedBox(height: defaultPadding / 2),
                    Text('ความกว้างผ้าม่าน (เมตร)',
                        style: GoogleFonts.kanit(fontSize: bodytext)),
                    const SizedBox(height: defaultPadding / 2),
                    TextField(
                      textInputAction: TextInputAction.next,
                      keyboardType: TextInputType.number,
                      inputFormatters: [MoneyInputFormatter()],
                      // inputFormatters: [ThousandsFormatter(allowFraction: true)],
                      controller: widthController,
                      decoration: InputDecoration(
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                      ),
                    ),
                    const SizedBox(height: defaultPadding / 2),
                    Text('ราคาผ้าม่าน (บาท)',
                        style: GoogleFonts.kanit(fontSize: bodytext)),
                    const SizedBox(height: defaultPadding / 2),
                    TextField(
                      keyboardType: TextInputType.number,
                      textInputAction: TextInputAction.done,
                      inputFormatters: [MoneyInputFormatter()],
                      // inputFormatters: [ThousandsFormatter(allowFraction: true)],
                      controller: priceController,
                      decoration: InputDecoration(
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                      ),
                    ),
                    const SizedBox(height: defaultPadding / 2),
                    CheckboxListTile(
                      title: Text('สลับหน้าผ้า ', style: GoogleFonts.kanit()),
                      controlAffinity: ListTileControlAffinity.leading,
                      activeColor: Colors.black,
                      value: isChecked,
                      // tristate: false,
                      // checkColor: Colors.black,
                      onChanged: (bool? value) {
                        if (isChecked) {
                          setState(() {
                            isChecked = false;
                            check = 2.8;
                          });
                        } else {
                          setState(() {
                            isChecked = true;
                            check = 3.2;
                          });
                        }
                      },
                    ),
                    const SizedBox(height: defaultPadding / 2),
                    SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: Colors.black,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30),
                          ),
                        ),
                        onPressed: () {
                          double width =
                              double.parse(widthController.value.text);
                          double price =
                              double.parse(priceController.value.text);
                          double _height =
                              double.parse(heightController.value.text);
                          calculate(width, price, _height);
                        },
                        child: Text(
                          'คำนวณราคา',
                          style: GoogleFonts.kanit(fontSize: 20),
                        ),
                      ),
                    ),
                    const SizedBox(height: 10),
                    const Divider(
                      color: Colors.black,
                      thickness: 3,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'ราคาทั้งหมด ',
                          style: GoogleFonts.kanit(
                              fontSize: 18, color: Colors.blue),
                        ),
                        Text(
                          '${GoogleSignInApi.formatNumber(result)}',
                          style: GoogleFonts.kanit(
                              fontSize: 24, color: Colors.blue),
                        ),
                        Text(
                          'บาท ',
                          style: GoogleFonts.kanit(
                              fontSize: 18, color: Colors.blue),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  // ม่านตาไก่
  // (ผ้าหน้ากว้าง)
  //    - สูงไม่เกิน 2.5 เมตร
  // 		  ไม่สลับหน้าผ้า ((0.35+สูงที่ติดตั้ง)*((กว้าง*2.2)/2.8)/0.9)*ราคาผ้า
  // 		  สลับหน้าผ้า   ((0.35+สูงที่ติดตั้ง)*((กว้าง*2.2)/2.8)/0.9)*ราคาผ้า
  //
  // 		- สูงเกิน 2.5 เมตร
  // 		 ไม่สลับหน้าผ้า ((0.35+สูงที่ติดตั้ง)*((กว้าง*2.2)/2.8)/0.9)*ราคาผ้า
  // 		 สลับหน้าผ้า   ((0.35+สูงที่ติดตั้ง)*((กว้าง*2.2)/2.8)/0.9)*ราคาผ้า

  // (ผ้าหน้าแคบ)
  // - สูงไม่เกิน 2.5 เมตร
  //   ไม่สลับหน้าผ้า ((0.35+สูงที่ติดตั้ง)*(กว้าง*2.8)/0.9)*ราคาผ้า
  //   สลับหน้าผ้า   ((0.35+สูงที่ติดตั้ง)*(กว้าง*3.2)/0.9)*ราคาผ้า
  //
  // - สูงเกิน 2.5 เมตร
  //   ไม่สลับหน้าผ้า
  //   สลับหน้าผ้า   (((0.35+สูงที่ติดตั้ง)*(กว้าง*2.6)/1.4)/0.9)*ราคาผ้า

  void calculate(double width, double price, double _height) {
    //// double total = (((width * height) / check) * _cloth) * price;
    ///ม่านตาไก่
    //สูงไม่เกิน 2.5เมตร
    // double total = ((0.35 + _height) * ((width * 2.2) / check) / 0.9) * price;

    //สูงเกิน 2.5 เมตร
    // double total = ((0.35 + _height) * ((width * 2.2) / 1.4) / 0.9) * price;

    // ม่านจับ
    //
    // ผ้าหน้ากว้าง
    double total = check;
    setState(() {
      result = total;
    });
  }

  GestureDetector buildSmallPreview(int index) {
    return GestureDetector(
      onTap: () {
        setState(() {
          selectImage = index;
        });
      },
      child: Container(
        margin: const EdgeInsets.only(right: 15),
        padding: const EdgeInsets.all(10),
        height: 48,
        width: 48,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(18),
          border: Border.all(
            color: selectImage == index
                ? const Color(0xFFFF7643)
                : Colors.transparent,
          ),
        ),
        child: Image.network(
          'https://images.unsplash.com/photo-1520342868574-5fa3804e551c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=6ff92caffcdd63681a35134a6770ed3b&auto=format&fit=crop&w=1951&q=80',
        ),
      ),
    );
  }

  void next() =>
      _controller.nextPage(duration: const Duration(milliseconds: 500));
  void previous() =>
      _controller.previousPage(duration: const Duration(milliseconds: 500));
}

// ม่านตาไก่ //
// (ผ้าหน้ากว้าง)
//    - สูงไม่เกิน 2.5 เมตร
// 		  ไม่สลับหน้าผ้า (((กว้าง*2.2)/2.8)/0.9)*ราคาผ้า
// 		  สลับหน้าผ้า   (((กว้าง*2.2)/3.2)/0.9)*ราคาผ้า
//                  (((width * 2.2) / check) / 0.9) * price
//
// 		- สูงเกิน 2.5 เมตร
// 		 ไม่สลับหน้าผ้า ((0.35+สูงที่ติดตั้ง)*((กว้าง*2.2)/2.8)/0.9)*ราคาผ้า
// 		 สลับหน้าผ้า   ((0.35+สูงที่ติดตั้ง)*((กว้าง*2.2)/3.2)/0.9)*ราคาผ้า
//                 ((0.35 + _height) * ((width * 2.2) / check) / 0.9) * price
// (ผ้าหน้าแคบ)
//		- สูงไม่เกิน 2.5 เมตร
// 		  ไม่สลับหน้าผ้า ((0.35+สูงที่ติดตั้ง)*(กว้าง*2.2)/0.9)*ราคาผ้า
// 		  สลับหน้าผ้า
//                  ((0.35 + _height) * ((width * 2.6) / 1.4) / 0.9) * price
//
// 		- สูงเกิน 2.5 เมตร
// 		  ไม่สลับหน้าผ้า ((0.35+สูงที่ติดตั้ง)*((กว้าง*2.6)/1.4)/0.9)*ราคาผ้า
// 		  สลับหน้าผ้า
//                  ((0.35 + _height) * ((width * 2.6) / 1.4) / 0.9) * price

// ม่านจับ //
// ผ้าหน้ากว้าง
//		- สูงไม่เกิน 2.6 เมตร
// 		  ไม่สลับหน้าผ้า ((กว้าง * 2.6)/0.9)*ราคาผ้า
// 		  สลับหน้าผ้า   ((กว้าง*2.6)/2.8)*ราคาผ้า
//                  ((width * 2.6) / check) * price
//
// 		- สูงเกิน 2.6 เมตร
// 		  ไม่สลับหน้าผ้า ((กว้าง * 2.6)/0.9)*ราคาผ้า
// 		  สลับหน้าผ้า   ((กว้าง*2.6)/2.8)*ราคาผ้า
//                  ((width * 2.6) / check) * price
//
// ผ้าหน้าแคบ
//    - สูงไม่เกิน 2.6เมตร
// 		  (((กว้าง*2.6)/0.9)*2)*ราคาผ้า
//      (((width * 2.6) / check) * 2) * price
//
// 		- สูงเกิน 2.6 เมตร
// 		  (((กว้าง*2.6)/2.8)*2)*ราคาผ้า
//      (((width * 2.6) / 2.8) * 2) * price

// ม่านลอน //
// ผ้าหน้ากว้าง
//		- สูงไม่เกิน 2.6 เมตร
// 		  ไม่สลับหน้าผ้า ((กว้าง*3.0)/0.9)*ราคาผ้า
// 		  สลับหน้าผ้า   ((กว้าง*3.0)/2.8)*ราคาผ้า
//                  ((width * 3.0) / check) * price
//
// 		- สูงเกิน 2.6 เมตร
//      ไม่สลับหน้าผ้า ((กว้าง*3.0)/0.9)*ราคาผ้า
// 		  สลับหน้าผ้า   ((กว้าง*3.0)/2.8)*ราคาผ้า
//                  ((width * 3.0) / check) * price
//
// ผ้าหน้าแคบ		(((0.35+สูงที่ติดตั้ง)*(กว้าง*3.0)/1.4)/0.9)*ราคาผ้า
//             (((0.35 + _height) * (width * 3.0) / 1.4) / 0.9) * price