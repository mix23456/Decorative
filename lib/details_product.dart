import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:project_curtain/add_customer.dart';
// import 'package:lite_rolling_switch/lite_rolling_switch.dart';
import 'package:project_curtain/screen/constants/constants.dart';
import 'package:project_curtain/format.dart';
import 'package:project_curtain/screen/page/customer_screen.dart';
import 'package:project_curtain/screen/page/home_screen.dart';
import 'package:project_curtain/screen/page/order_screen.dart';
import 'package:project_curtain/screen/page/product_screen.dart';
import 'package:project_curtain/screen/page/receipt_screen.dart';
import 'package:project_curtain/screen/page/setting_screen.dart';
import 'package:syncfusion_flutter_core/theme.dart';
import 'package:syncfusion_flutter_sliders/sliders.dart';

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
var curtain = ['ผ้าม่านตาไก่', 'ผ้าม่านจับ', 'ผ้าม่านลอน'];
int numOfItem = 1;
int selectImage = 0;
String? dropdownValue;
double check = 1;
double result = 0;
bool isChecked = false;
double heightCurtain = 0;
double widthCurtain = 0;
double priceCurtain = 0;
final TextEditingController widthController = TextEditingController();
final TextEditingController priceController = TextEditingController();
final TextEditingController heightController = TextEditingController();
final CarouselController _controller = CarouselController();
int currenIndex = 0;
final screens = [
  const HomeScreen(),
  const ProductScreen(),
  const CustomerScreen(),
  const OrderScreen(),
  const ReceiptScreen(),
  const SettingScreen(),
];

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
            style: GoogleFonts.kanit(color: Colors.black, fontSize: subtitle),
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
              const SizedBox(height: defaultPadding),
              Text('ม่านสองชั้น', style: GoogleFonts.kanit(fontSize: subtitle)),
              const SizedBox(height: defaultPadding),
              Container(
                padding: const EdgeInsets.all(10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Expanded(
                          flex: 1,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Text('ชนิดผ้า :',
                                  style: GoogleFonts.kanit(
                                      color: colortext1, fontSize: bodytext))
                            ],
                          ),
                        ),
                        Expanded(
                          flex: 3,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text(' ผ้าหน้าทึบ',
                                  style: GoogleFonts.kanit(
                                      color: colortext2, fontSize: bodytext)),
                            ],
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: defaultPadding),
                    Row(
                      children: [
                        Expanded(
                          flex: 1,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Text('รหัสสินค้า :',
                                  style: GoogleFonts.kanit(
                                      color: colortext1, fontSize: bodytext))
                            ],
                          ),
                        ),
                        Expanded(
                          flex: 3,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text(' ผ้าหน้าทึบ',
                                  style: GoogleFonts.kanit(
                                      color: colortext2, fontSize: bodytext)),
                            ],
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: defaultPadding),
                    Row(
                      children: [
                        Expanded(
                          flex: 1,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Text('เลือกสี :',
                                  style: GoogleFonts.kanit(
                                      color: colortext1, fontSize: bodytext))
                            ],
                          ),
                        ),
                        Expanded(
                          flex: 3,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text(' ผ้าหน้าทึบ',
                                  style: GoogleFonts.kanit(
                                      color: colortext2, fontSize: bodytext)),
                            ],
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: defaultPadding),
                    Row(
                      children: [
                        Expanded(
                          flex: 1,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Text('ราคา/ชิ้น :',
                                  style: GoogleFonts.kanit(
                                      color: colortext1, fontSize: bodytext))
                            ],
                          ),
                        ),
                        Expanded(
                          flex: 3,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text(' ผ้าหน้าทึบ',
                                  style: GoogleFonts.kanit(
                                      color: colortext2, fontSize: bodytext)),
                            ],
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: defaultPadding),
                    Row(
                      children: [
                        Expanded(
                          flex: 1,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Text('ความสูงผ้าม่าน (เมตร) :',
                                  style: GoogleFonts.kanit(
                                      color: colortext1, fontSize: bodytext)),
                            ],
                          ),
                        ),
                        Expanded(
                          flex: 3,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              SizedBox(
                                width: 530,
                                child: SfSliderTheme(
                                  data: SfSliderThemeData(
                                    thumbStrokeWidth: 3,
                                    thumbStrokeColor: colortext1,
                                    thumbColor: Colors.white,
                                  ),
                                  child: SfSlider(
                                    min: 0.0,
                                    max: 100.0,
                                    value: heightCurtain,
                                    inactiveColor: colortext2,
                                    onChanged: (dynamic newValue) {
                                      setState(() {
                                        heightCurtain = newValue;
                                        valueChange();
                                      });
                                    },
                                  ),
                                ),
                              ),
                              const SizedBox(
                                width: defaultPadding,
                              ),
                              Text(
                                '${heightCurtain.toStringAsFixed(2)}',
                                style: GoogleFonts.kanit(
                                    color: colortext2, fontSize: bodytext),
                              ),
                              const SizedBox(
                                width: defaultPadding,
                              ),
                              Text(
                                'เมตร',
                                style: GoogleFonts.kanit(
                                    color: colortext2, fontSize: bodytext),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: defaultPadding / 2),
                    // TextField(
                    //   controller: heightController,
                    //   onChanged: (value) {
                    //     valueChancg();
                    //   },
                    //   keyboardType: TextInputType.number,
                    //   textInputAction: TextInputAction.next,
                    //   inputFormatters: [MoneyInputFormatter()],
                    //   // inputFormatters: [ThousandsFormatter(allowFraction: true)],
                    //   decoration: InputDecoration(
                    //     // errorText: _height.text.replaceAll('.', ''),
                    //     focusedBorder: OutlineInputBorder(
                    //       borderRadius: BorderRadius.circular(30),
                    //     ),
                    //     enabledBorder: OutlineInputBorder(
                    //       borderRadius: BorderRadius.circular(30),
                    //     ),
                    //   ),
                    // ),
                    const SizedBox(height: defaultPadding / 2),
                    Row(
                      children: [
                        Expanded(
                          flex: 1,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Text('ความกว้างผ้าม่าน (เมตร) :',
                                  style: GoogleFonts.kanit(
                                      color: colortext1, fontSize: bodytext)),
                            ],
                          ),
                        ),
                        Expanded(
                          flex: 3,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              SizedBox(
                                width: 530,
                                child: SfSliderTheme(
                                  data: SfSliderThemeData(
                                    thumbStrokeWidth: 3,
                                    thumbStrokeColor: colortext1,
                                    thumbColor: Colors.white,
                                  ),
                                  child: SfSlider(
                                    min: 0.0,
                                    max: 100.0,
                                    value: widthCurtain,
                                    inactiveColor: colortext2,
                                    onChanged: (dynamic newValue) {
                                      setState(() {
                                        widthCurtain = newValue;
                                        valueChange();
                                      });
                                    },
                                  ),
                                ),
                              ),
                              const SizedBox(
                                width: defaultPadding,
                              ),
                              Text(
                                '${widthCurtain.toStringAsFixed(2)}',
                                style: GoogleFonts.kanit(
                                    color: colortext2, fontSize: bodytext),
                              ),
                              const SizedBox(
                                width: defaultPadding,
                              ),
                              Text(
                                'เมตร',
                                style: GoogleFonts.kanit(
                                    color: colortext2, fontSize: bodytext),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: defaultPadding / 2),
                    Row(
                      children: [
                        Expanded(
                          flex: 1,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Text('ราคาผ้าม่าน (บาท) :',
                                  style: GoogleFonts.kanit(
                                      color: colortext1, fontSize: bodytext)),
                            ],
                          ),
                        ),
                        Expanded(
                          flex: 3,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              SizedBox(
                                width: 530,
                                child: SfSliderTheme(
                                  data: SfSliderThemeData(
                                    thumbStrokeWidth: 3,
                                    thumbStrokeColor: colortext1,
                                    thumbColor: Colors.white,
                                  ),
                                  child: SfSlider(
                                    min: 0.0,
                                    max: 100.0,
                                    value: priceCurtain,
                                    inactiveColor: colortext2,
                                    onChanged: (dynamic newValue) {
                                      setState(() {
                                        priceCurtain = newValue;
                                        valueChange();
                                      });
                                    },
                                  ),
                                ),
                              ),
                              const SizedBox(
                                width: defaultPadding,
                              ),
                              Text(
                                '${priceCurtain.toStringAsFixed(2)}',
                                style: GoogleFonts.kanit(
                                    color: colortext2, fontSize: bodytext),
                              ),
                              const SizedBox(
                                width: defaultPadding,
                              ),
                              Text(
                                'บาท',
                                style: GoogleFonts.kanit(
                                    color: colortext2, fontSize: bodytext),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: defaultPadding / 2),
                    Row(
                      children: [
                        Expanded(
                          flex: 1,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Text('แบบเย็บ :',
                                  style: GoogleFonts.kanit(
                                      color: colortext1, fontSize: bodytext))
                            ],
                          ),
                        ),
                        Expanded(
                          flex: 3,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text(' ผ้าหน้าทึบ',
                                  style: GoogleFonts.kanit(
                                      color: colortext2, fontSize: bodytext)),
                            ],
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: defaultPadding),
                    Row(
                      children: [
                        Expanded(
                          flex: 1,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Text(
                                'สลับหน้าผ้า ',
                                style: GoogleFonts.kanit(
                                    fontSize: bodytext, color: colortext1),
                              ),
                            ],
                          ),
                        ),
                        Expanded(
                          flex: 3,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              CupertinoSwitch(
                                thumbColor: colorWhite,
                                // trackColor: colortext1,
                                activeColor: colortext1,
                                value: isChecked,
                                onChanged: (value) {
                                  setState(() {
                                    isChecked = !isChecked;
                                    valueChange();
                                  });
                                },
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: defaultPadding / 2),
                    // CheckboxListTile(
                    //   title: Text('สลับหน้าผ้า ', style: GoogleFonts.kanit()),
                    //   controlAffinity: ListTileControlAffinity.leading,
                    //   activeColor: Colors.black,
                    //   value: isChecked,
                    //   onChanged: (bool? value) {
                    //     setState(() {
                    //       // isChecked = !isChecked;
                    //       // valueChange();
                    //     });
                    //   },
                    // ),
                    // const SizedBox(height: defaultPadding / 2),

                    // SizedBox(
                    //   width: double.infinity,
                    //   child: ElevatedButton(
                    //     style: ElevatedButton.styleFrom(
                    //       primary: Colors.black,
                    //       shape: RoundedRectangleBorder(
                    //         borderRadius: BorderRadius.circular(30),
                    //       ),
                    //     ),
                    //     onPressed: () {
                    //       double width =
                    //           double.parse(widthController.value.text);
                    //       double price =
                    //           double.parse(priceController.value.text);
                    //       double _height =
                    //           double.parse(heightController.value.text);
                    //       calculate(width, price, _height);
                    //     },
                    //     child: Text(
                    //       'คำนวณราคา',
                    //       style: GoogleFonts.kanit(fontSize: 20),
                    //     ),
                    //   ),
                    // ),

                    // const SizedBox(height: 10),
                    Row(
                      // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          flex: 1,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Text(
                                'ราคารวม : ',
                                style: GoogleFonts.kanit(
                                    fontSize: bodytext, color: colortext1),
                              ),
                            ],
                          ),
                        ),
                        Expanded(
                          flex: 3,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text(
                                '${GoogleSignInApi.formatNumber(result)}',
                                style: GoogleFonts.kanit(
                                    fontSize: bodytext, color: colortext2),
                              ),
                              Text(
                                ' บาท',
                                style: GoogleFonts.kanit(
                                    fontSize: bodytext, color: colortext2),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: defaultPadding / 2),
                    Container(
                      alignment: Alignment.center,
                      child: ElevatedButton.icon(
                        style: ElevatedButton.styleFrom(
                            primary: colortext1,
                            padding: const EdgeInsets.only(
                                left: 18, right: 18, top: 12, bottom: 12),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(28),
                            )),
                        onPressed: () {
                          showDialog(
                              context: context,
                              builder: (context) {
                                return Dialog(
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: SingleChildScrollView(
                                    child: Container(
                                      padding: const EdgeInsets.symmetric(
                                          vertical: 28,
                                          horizontal: defaultPadding),
                                      width: MediaQuery.of(context).size.width *
                                          0.4,
                                      height:
                                          MediaQuery.of(context).size.height *
                                              0.19,
                                      child: Column(
                                        children: [
                                          Text('เจ้าของออเดอร์',
                                              style: GoogleFonts.kanit(
                                                  fontSize: bodytext)),
                                          const SizedBox(
                                              height: defaultPadding),
                                          Row(
                                            children: [
                                              Expanded(
                                                child: TextField(
                                                  decoration: InputDecoration(
                                                    hintText: 'ชื่อลูกค้า',
                                                    hintStyle:
                                                        GoogleFonts.kanit(
                                                            color: Colors.grey,
                                                            fontSize: bodytext),
                                                    border: OutlineInputBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              10),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              const SizedBox(
                                                  width: defaultPadding),
                                              ElevatedButton.icon(
                                                onPressed: () {
                                                  Navigator.push(
                                                      context,
                                                      MaterialPageRoute(
                                                          builder: (context) =>
                                                              AddCustomer()));
                                                },
                                                icon: const Icon(Icons.add),
                                                label: Text(
                                                  'เพิ่ม',
                                                  style: GoogleFonts.kanit(
                                                      fontSize: 16),
                                                ),
                                                style: ElevatedButton.styleFrom(
                                                  primary: Colors.black,
                                                  shape: RoundedRectangleBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            10),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                          const SizedBox(
                                              height: defaultPadding),
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              SizedBox(
                                                width: 150,
                                                child: ElevatedButton(
                                                  style:
                                                      ElevatedButton.styleFrom(
                                                    shape:
                                                        RoundedRectangleBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              28),
                                                    ),
                                                    primary:
                                                        const Color(0xFFD4D4D4),
                                                  ),
                                                  onPressed: () {
                                                    Navigator.pop(context);
                                                  },
                                                  child: Text(
                                                    'ยกเลิก',
                                                    style: GoogleFonts.kanit(
                                                        fontSize: bodytext,
                                                        color: colortext1),
                                                  ),
                                                ),
                                              ),
                                              SizedBox(
                                                width: 150,
                                                child: ElevatedButton(
                                                  style:
                                                      ElevatedButton.styleFrom(
                                                    shape:
                                                        RoundedRectangleBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              28),
                                                    ),
                                                    primary: colortext1,
                                                  ),
                                                  onPressed: () {
                                                    showDialog(
                                                        context: context,
                                                        builder: (context) {
                                                          return Dialog(
                                                            child: Container(
                                                                alignment:
                                                                    Alignment
                                                                        .center,
                                                                width: MediaQuery
                                                                            .of(
                                                                                context)
                                                                        .size
                                                                        .width *
                                                                    0.25,
                                                                height: MediaQuery.of(
                                                                            context)
                                                                        .size
                                                                        .height *
                                                                    0.1,
                                                                decoration:
                                                                    BoxDecoration(
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              20),
                                                                ),
                                                                child: Text(
                                                                  'เพิ่มออเดอร์สำเร็จ',
                                                                  style: GoogleFonts.kanit(
                                                                      fontSize:
                                                                          bodytext),
                                                                )),
                                                          );
                                                        });
                                                  },
                                                  child: Text(
                                                    'ยืนยัน',
                                                    style: GoogleFonts.kanit(
                                                        fontSize: bodytext,
                                                        color: colorWhite),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                );
                              });
                        },
                        icon: const Icon(Icons.shopping_cart_outlined),
                        label: Text(
                          'เพิ่มเข้าออเดอร์',
                          style: GoogleFonts.kanit(
                              color: colorWhite, fontSize: bodytext),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      // bottomNavigationBar: BottomNavigationBar(
      //   type: BottomNavigationBarType.fixed,
      //   backgroundColor: Colors.grey[300],
      //   selectedItemColor: Colors.black,
      //   onTap: (index) => setState(() => currenIndex = index),
      //   currentIndex: currenIndex,
      //   items: const [
      //     BottomNavigationBarItem(
      //       icon: Icon(
      //         Icons.home,
      //         size: 24,
      //       ),
      //       label: "หน้าแรก",
      //     ),
      //     BottomNavigationBarItem(
      //       icon: Icon(
      //         Icons.all_inbox,
      //         size: 24,
      //       ),
      //       label: "สินค้า",
      //     ),
      //     BottomNavigationBarItem(
      //       icon: Icon(
      //         Icons.people,
      //         size: 24,
      //       ),
      //       label: "ลูกค้า",
      //     ),
      //     BottomNavigationBarItem(
      //       icon: Icon(
      //         Icons.receipt,
      //         size: 24,
      //       ),
      //       label: "ออเดอร์",
      //     ),
      //     BottomNavigationBarItem(
      //       icon: Icon(
      //         Icons.receipt_long,
      //         size: 24,
      //       ),
      //       label: "ใบเสร็จ",
      //     ),
      //     BottomNavigationBarItem(
      //       icon: Icon(
      //         Icons.settings,
      //         size: 24,
      //       ),
      //       label: "ตั้งค่า",
      //     ),
      //   ],
      //   selectedLabelStyle: GoogleFonts.kanit(),
      //   unselectedLabelStyle: GoogleFonts.kanit(),
      // ),
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
  //
  // (ผ้าหน้าแคบ)
  // - สูงไม่เกิน 2.5 เมตร
  //   ไม่สลับหน้าผ้า ((0.35+สูงที่ติดตั้ง)*(กว้าง*2.8)/0.9)*ราคาผ้า
  //   สลับหน้าผ้า   ((0.35+สูงที่ติดตั้ง)*(กว้าง*3.2)/0.9)*ราคาผ้า
  //
  // - สูงเกิน 2.5 เมตร
  //   ไม่สลับหน้าผ้า
  //   สลับหน้าผ้า   (((0.35+สูงที่ติดตั้ง)*(กว้าง*2.6)/1.4)/0.9)*ราคาผ้า

  // void calculate(double width, double price, double _height) {
  //   print('width');
  //   print(width);
  //   print('_height');
  //   print(_height);
  //   print('price');
  //   print(price);
  //   double total1 = (((1) * (width * 2.2) / 1) / 0.9) * price;
  //   double total2 = (((0.35 + _height) * (width * 2.2) / 1.4) / 0.9) * price;
  //   setState(() {
  //     result = isChecked ? total2 : total1;
  //   });
  // }
  void calculate(
      double widthCurtain, double priceCurtain, double heightCurtain) {
    // print('widthCurtain');
    // print(widthCurtain);
    // print('heightCurtain');
    // print(heightCurtain);
    // print('priceCurtain');
    // print(priceCurtain);
    double total1 = (((1) * (widthCurtain * 2.2) / 1) / 0.9) * priceCurtain;
    double total2 =
        (((0.35 + heightCurtain) * (widthCurtain * 2.2) / 1.4) / 0.9) *
            priceCurtain;
    setState(() {
      result = isChecked ? total2 : total1;
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

  void valueChange() {
    widthCurtain;
    heightCurtain;
    priceCurtain;
    calculate(widthCurtain, priceCurtain, heightCurtain);
    // double width = double.parse(widthController.value.text);
    // double price = double.parse(priceController.value.text);
    // double _height = double.parse(heightController.value.text);
    // calculate(width, price, _height);
  }
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
