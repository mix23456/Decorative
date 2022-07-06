import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_multi_formatter/formatters/money_input_formatter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:project_curtain/constants/constants.dart';
import 'package:project_curtain/model/allproduct.dart';
import 'package:project_curtain/model/model_provider/customers.dart';
import 'package:project_curtain/model/model_provider/order.dart';
import 'package:project_curtain/page/add/add_customer.dart';
import 'package:project_curtain/page/search/search_product.dart';
import 'package:project_curtain/widget/setupdialogcustomers.dart';
import 'package:provider/provider.dart';
import 'package:syncfusion_flutter_core/theme.dart';
import 'package:syncfusion_flutter_sliders/sliders.dart';
import 'package:intl/intl.dart';

class DetailScreen extends StatefulWidget {
  const DetailScreen({key}) : super(key: key);

  @override
  _DetailScreenState createState() => _DetailScreenState();
}

NumberFormat priceformat = NumberFormat.decimalPattern('en_us');

final List<String> imgList = [
  'assets/images/detail_product_curtain1.png',
  'assets/images/detail_product_curtain2.png',
  'assets/images/detail_product_curtain3.png',
  'assets/images/detail_product_curtain4.png',
  'assets/images/detail_product_curtain5.png',
  'assets/images/detail_product_curtain6.png',
];

final List<String> code = [
  'AC01CY04',
  'AC01CY04',
  'AC01CY04',
];

final List<String> colorcode = ['#707070', '#ABAAAC', '#E9E9E9'];

final List<Color> color = [
  colortext1,
  colortext2,
  const Color(0xFFE9E9E9),
];

int selectImage = 0;
int selectCode = 0;
int selectColor = 0;
double result = 0;
bool isChecked = false;
double heightCurtain = 0;
double widthCurtain = 0;
double priceCurtain = 0;
final TextEditingController widthController = TextEditingController();
final TextEditingController heightController = TextEditingController();
final TextEditingController textfieldnameController = TextEditingController();
final CarouselController _controller = CarouselController();

Allproduct allProduct = Allproduct();

List<Map<String, String>> orderset = [
  {},
];

class _DetailScreenState extends State<DetailScreen> {
  String? tempcolor = '#707070';
  String? tempproductid = 'AC01CY04';
  String? tempname;

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
              Icons.arrow_back_ios_new,
              color: Colors.black,
            )),
        centerTitle: true,
        title: Text(
          'PRODUCT',
          style: GoogleFonts.kanit(color: Colors.black, fontSize: subtitle),
        ),
        actions: [
          PopupMenuButton(
            icon: const Icon(
              Icons.search,
              color: colorBlack,
            ),
            itemBuilder: (context) {
              return [
                PopupMenuItem<int>(
                  child: Row(
                    children: [
                      SizedBox(
                        width: 200,
                        child: TextField(
                          decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: 'ค้นหา',
                              hintStyle: GoogleFonts.kanit(color: colortext2)),
                        ),
                      ),
                      IconButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const SearchProduct()));
                        },
                        icon: const Icon(
                          Icons.search,
                          color: colorBlack,
                        ),
                      ),
                    ],
                  ),
                ),
              ];
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(
              horizontal: defaultPadding, vertical: defaultPadding),
          child: Column(
            children: [
              GestureDetector(
                onTap: () async {
                  showDialog(
                      context: context, builder: (_) => const ImageDialog());
                },
                child: SizedBox(
                    width: 453,
                    height: 214,
                    child: Image.asset(imgList[selectImage])),
              ),
              const SizedBox(height: defaultPadding),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ...List.generate(
                    imgList.length,
                    (index) => buildSmallPreview(index),
                  ),
                ],
              ),
              const SizedBox(height: defaultPadding * 2),
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
                        const SizedBox(width: defaultPadding),
                        Expanded(
                          flex: 4,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text(
                                  allProduct.getproduct[3]['productname']
                                      .toString(),
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
                        const SizedBox(width: defaultPadding),
                        Expanded(
                          flex: 4,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              ...List.generate(code.length, (index) {
                                tempproductid = code[index];
                                return Expanded(child: buildSelectCode(index));
                              }),
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
                        const SizedBox(width: defaultPadding),
                        Expanded(
                          flex: 4,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              ...List.generate(
                                  3,
                                  (index) => Expanded(
                                        child: GestureDetector(
                                          onTap: () {
                                            tempcolor = colorcode[index];
                                            setState(() {
                                              selectColor = index;
                                            });
                                          },
                                          child: Container(
                                            margin: const EdgeInsets.only(
                                                right: 10),
                                            height: 33.5,
                                            width: 148,
                                            decoration: BoxDecoration(
                                              color: color[index],
                                              borderRadius:
                                                  BorderRadius.circular(10),
                                              border: Border.all(
                                                color: selectColor == index
                                                    ? colorBlack
                                                    : Colors.transparent,
                                              ),
                                              boxShadow: const [
                                                BoxShadow(
                                                  color: colorBgBtn2,
                                                  blurRadius: 5,
                                                  offset: Offset(0, 2),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      )),
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
                        const SizedBox(width: defaultPadding),
                        Expanded(
                          flex: 4,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text(
                                  priceformat.format(int.parse(allProduct
                                      .getproduct[2]['price']
                                      .toString())),
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
                              Text('ความสูง :',
                                  style: GoogleFonts.kanit(
                                      color: colortext1, fontSize: bodytext)),
                            ],
                          ),
                        ),
                        Expanded(
                          flex: 4,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              SizedBox(
                                width: MediaQuery.of(context).size.width * 0.35,
                                child: SfSliderTheme(
                                  data: SfSliderThemeData(
                                    thumbStrokeWidth: 3,
                                    thumbStrokeColor: colortext1,
                                    thumbColor: Colors.white,
                                  ),
                                  child: SfSlider(
                                    min: 0.0,
                                    max: 1000.0,
                                    stepSize: 50,
                                    value: heightCurtain,
                                    inactiveColor: colortext2,
                                    onChanged: (dynamic newValue) {
                                      setState(() {
                                        heightCurtain = newValue;
                                        heightController.text =
                                            newValue.toStringAsFixed(2);
                                        valueChange();
                                      });
                                    },
                                  ),
                                ),
                              ),
                              const SizedBox(width: defaultPadding),
                              Container(
                                width: MediaQuery.of(context).size.width * 0.3,
                                padding: const EdgeInsets.symmetric(
                                    horizontal: defaultPadding),
                                decoration: BoxDecoration(
                                  color: colorWhite,
                                  boxShadow: const [
                                    BoxShadow(
                                        color: colorBgBtn2,
                                        blurRadius: 5,
                                        offset: Offset(0, 2)),
                                  ],
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Row(
                                  children: [
                                    Expanded(
                                      child: TextField(
                                        controller: heightController,
                                        onChanged: (value) {
                                          var formatValue =
                                              value.isEmpty ? '0' : value;
                                          if (double.parse(formatValue) >=
                                              100.00) {
                                            setState(() {
                                              heightCurtain = 100.00;
                                              heightController.text =
                                                  heightCurtain.toString();
                                            });
                                          } else {
                                            setState(() {
                                              heightCurtain =
                                                  double.parse(formatValue);
                                            });
                                          }
                                          valueChange();
                                        },
                                        keyboardType: TextInputType.number,
                                        textInputAction: TextInputAction.done,
                                        inputFormatters: [
                                          MoneyInputFormatter()
                                        ],
                                        decoration: InputDecoration(
                                          border: InputBorder.none,
                                          hintText: '0.00',
                                          hintStyle: GoogleFonts.kanit(
                                              color: colortext2),
                                        ),
                                        style: GoogleFonts.kanit(
                                            color: colortext2),
                                      ),
                                    ),
                                    Text(
                                      'นิ้ว',
                                      style: GoogleFonts.kanit(
                                          color: colortext2,
                                          fontSize: bodytext),
                                    ),
                                  ],
                                ),
                              ),
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
                              Text('ความกว้าง :',
                                  style: GoogleFonts.kanit(
                                      color: colortext1, fontSize: bodytext)),
                            ],
                          ),
                        ),
                        Expanded(
                          flex: 4,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              SizedBox(
                                width: MediaQuery.of(context).size.width * 0.35,
                                child: SfSliderTheme(
                                  data: SfSliderThemeData(
                                    thumbStrokeWidth: 3,
                                    thumbStrokeColor: colortext1,
                                    thumbColor: Colors.white,
                                  ),
                                  child: SfSlider(
                                    min: 0.0,
                                    max: 1000.0,
                                    stepSize: 50,
                                    value: widthCurtain,
                                    inactiveColor: colortext2,
                                    onChanged: (dynamic newValue) {
                                      setState(() {
                                        widthCurtain = newValue;
                                        widthController.text =
                                            newValue.toStringAsFixed(2);
                                        valueChange();
                                      });
                                    },
                                  ),
                                ),
                              ),
                              const SizedBox(
                                width: defaultPadding,
                              ),
                              Container(
                                width: MediaQuery.of(context).size.width * 0.3,
                                padding: const EdgeInsets.symmetric(
                                    horizontal: defaultPadding),
                                decoration: BoxDecoration(
                                  color: colorWhite,
                                  boxShadow: const [
                                    BoxShadow(
                                        color: colorBgBtn2,
                                        blurRadius: 5,
                                        offset: Offset(0, 2))
                                  ],
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Row(
                                  children: [
                                    Expanded(
                                      child: TextField(
                                        controller: widthController,
                                        onChanged: (value) {
                                          var formatValue =
                                              value.isEmpty ? '0' : value;
                                          if (double.parse(formatValue) >=
                                              100.00) {
                                            setState(() {
                                              widthCurtain = 100.00;
                                              widthController.text =
                                                  widthCurtain.toString();
                                            });
                                          } else {
                                            setState(() {
                                              widthCurtain =
                                                  double.parse(formatValue);
                                            });
                                          }
                                          valueChange();
                                        },
                                        keyboardType: TextInputType.number,
                                        textInputAction: TextInputAction.next,
                                        inputFormatters: [
                                          MoneyInputFormatter()
                                        ],
                                        decoration: InputDecoration(
                                          border: InputBorder.none,
                                          hintText: '0.00',
                                          hintStyle: GoogleFonts.kanit(
                                              color: colortext2),
                                        ),
                                        style: GoogleFonts.kanit(
                                            color: colortext2),
                                      ),
                                    ),
                                    const SizedBox(width: defaultPadding),
                                    Text(
                                      'นิ้ว',
                                      style: GoogleFonts.kanit(
                                          color: colortext2,
                                          fontSize: bodytext),
                                    ),
                                  ],
                                ),
                              ),
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
                              Expanded(
                                flex: 1,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
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
                              const SizedBox(width: defaultPadding * 2),
                              Expanded(
                                flex: 4,
                                child: Text(
                                  'สลับหน้าผ้า ',
                                  style: GoogleFonts.kanit(
                                      fontSize: bodytext, color: colortext1),
                                ),
                              ),
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
                                'หมายเหตุ :',
                                style: GoogleFonts.kanit(
                                    fontSize: bodytext, color: colortext1),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(width: defaultPadding),
                        Expanded(
                          flex: 4,
                          child: TextField(
                            maxLines: 4,
                            decoration: InputDecoration(
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Container(
                      padding:
                          const EdgeInsets.symmetric(vertical: defaultPadding),
                      child: Column(
                        children: [
                          const Divider(
                            indent: 0,
                            height: defaultPadding,
                            thickness: 1,
                            color: Color(0xFF707070),
                          ),
                          const SizedBox(height: defaultPadding * 2),
                          Row(
                            children: [
                              Expanded(
                                flex: 1,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Text(
                                      'ราคารวม : ',
                                      style: GoogleFonts.kanit(
                                          fontSize: subtitle,
                                          color: colortext1),
                                    ),
                                  ],
                                ),
                              ),
                              Expanded(
                                flex: 2,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Text(
                                      '฿ ',
                                      style: GoogleFonts.kanit(
                                          fontSize: subtitle,
                                          color: colorBlack),
                                    ),
                                    Text(
                                      priceformat.format(int.parse(allProduct
                                          .getproduct[2]['price']
                                          .toString())),
                                      style: GoogleFonts.kanit(
                                          fontSize: subtitle,
                                          color: colorBlack),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
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
                          showConfirmDialog();
                        },
                        icon: const Icon(Icons.shopping_cart_outlined),
                        label: Text(
                          'เพิ่มเข้าออเดอร์',
                          style: GoogleFonts.kanit(
                              color: colorWhite, fontSize: bodytext),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void showConfirmDialog() {
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
                    vertical: 28, horizontal: defaultPadding),
                width: 320,
                height: 210,
                child: Column(
                  children: [
                    Text('เจ้าของออเดอร์',
                        style: GoogleFonts.kanit(fontSize: bodytext)),
                    const SizedBox(height: defaultPadding),
                    Row(
                      children: [
                        Expanded(
                          child: GestureDetector(
                            onTap: showSelectDialogCustomers,
                            child: Container(
                                padding: const EdgeInsets.all(12),
                                alignment: Alignment.centerLeft,
                                width: 360,
                                height: 48,
                                decoration: BoxDecoration(
                                    border: Border.all(color: Colors.grey),
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(9)),
                                child: Text(
                                  context
                                      .watch<Customers>()
                                      .getname()
                                      .toString(),
                                  style: GoogleFonts.kanit(
                                      color: (Customers.customerselected ==
                                              'ชื่อลูกค้า')
                                          ? Colors.grey
                                          : Colors.black,
                                      fontSize: bodytext),
                                  textAlign: TextAlign.center,
                                )),
                          ),
                        ),
                        const SizedBox(width: defaultPadding),
                        SizedBox(
                          height: 48,
                          child: ElevatedButton.icon(
                            onPressed: () {
                              Customers().setdefaulCustomerselect();
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const AddCustomer()));
                            },
                            icon: const Icon(Icons.add),
                            label: Text(
                              'เพิ่ม',
                              style: GoogleFonts.kanit(fontSize: bodytext),
                            ),
                            style: ElevatedButton.styleFrom(
                              primary: Colors.black,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: defaultPadding),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Expanded(
                          child: SizedBox(
                            width: 150,
                            height: 48,
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(28),
                                ),
                                primary: const Color(0xFFD4D4D4),
                              ),
                              onPressed: () {
                                Customers().setdefaulCustomerselect();
                                Navigator.pop(context);
                              },
                              child: Text(
                                'ยกเลิก',
                                style: GoogleFonts.kanit(
                                    fontSize: bodytext, color: colortext1),
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: defaultPadding,
                        ),
                        Expanded(
                          child: SizedBox(
                            width: 150,
                            height: 48,
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(28),
                                ),
                                primary: colortext1,
                              ),
                              onPressed: () {
                                if (Customers.customerselected ==
                                    'ชื่อลูกค้า') {
                                  showIncressOrderInComplete();
                                } else {
                                  Customers().setdefaulCustomerselect();
                                  tempname = textfieldnameController.text;
                                  orderset = [
                                    {
                                      'titlename': tempname.toString(),
                                      'productname': allProduct.getproduct[3]
                                              ['productname']
                                          .toString(),
                                      'productid': tempproductid.toString(),
                                      'productcolor': tempcolor.toString(),
                                      'productsize':
                                          '$widthCurtain x $heightCurtain',
                                      'price': allProduct.getproduct[2]
                                          ['price'],
                                      'image': 'assets/images/curtain.png',
                                      'ischeck': 'false'
                                    }
                                  ];
                                  setState(() {
                                    context.read<Order>().ordercreate(orderset);
                                  });
                                  showIncressOrderComplete();
                                }
                              },
                              child: Text(
                                'ยืนยัน',
                                style: GoogleFonts.kanit(
                                    fontSize: bodytext, color: colorWhite),
                              ),
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
  }

  void showIncressOrderInComplete() {
    showDialog(
        context: context,
        builder: (context) {
          return Dialog(
            child: Container(
                alignment: Alignment.center,
                width: MediaQuery.of(context).size.width * 0.25,
                height: MediaQuery.of(context).size.height * 0.1,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Text(
                  'กรุณาเพิ่มชื่อลูกค้า',
                  style: GoogleFonts.kanit(fontSize: bodytext),
                )),
          );
        });
  }

  void showSelectDialogCustomers() {
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text('ชื่อลูกค้า',
                style: GoogleFonts.kanit(fontSize: bodytext)),
            content: setupDialogCustomers(),
          );
        });
  }

  void showIncressOrderComplete() {
    showDialog(
        context: context,
        builder: (context) {
          return Dialog(
            child: Container(
                alignment: Alignment.center,
                width: MediaQuery.of(context).size.width * 0.25,
                height: MediaQuery.of(context).size.height * 0.1,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Text(
                  'เพิ่มออเดอร์สำเร็จ',
                  style: GoogleFonts.kanit(fontSize: bodytext),
                )),
          );
        });
  }

  void calculate(double widthCurtain, double heightCurtain) {
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
        height: 48,
        width: 48,
        decoration: BoxDecoration(
          border:
              Border.all(color: selectImage == index ? colorBlack : colorWhite),
        ),
        child: Image.asset(imgList[index]),
      ),
    );
  }

  GestureDetector buildSelectCode(int index) {
    return GestureDetector(
      onTap: () {
        setState(() {
          selectCode = index;
        });
      },
      child: Container(
        margin: const EdgeInsets.only(right: 15),
        height: 33.5,
        width: 143,
        decoration: BoxDecoration(
          color: colorWhite,
          borderRadius: BorderRadius.circular(10),
          border:
              Border.all(color: selectCode == index ? colorBlack : colorWhite),
          boxShadow: const [
            BoxShadow(
              color: colorBgBtn2,
              blurRadius: 5,
              offset: Offset(0, 2),
            ),
          ],
        ),
        child: Align(
            alignment: Alignment.center,
            child: Text(
              code[index],
              style: GoogleFonts.kanit(),
            )),
      ),
    );
  }

  GestureDetector buildSelectColor(int index) {
    return GestureDetector(
      onTap: () {
        setState(() {
          selectColor = index;
        });
      },
      child: Container(
        margin: const EdgeInsets.only(right: 15),
        height: 33.5,
        width: 143,
        decoration: BoxDecoration(
          color: color[selectColor],
          border: Border.all(
              color: selectColor == index ? colorBlack : Colors.transparent),
          boxShadow: const [
            BoxShadow(
              color: colorBgBtn2,
              blurRadius: 5,
              offset: Offset(0, 2),
            ),
          ],
        ),
        child: Text(index.toString()),
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
    calculate(widthCurtain, heightCurtain);
  }
}

class ImageDialog extends StatelessWidget {
  const ImageDialog({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Dialog(
      child: SizedBox(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height * 0.5,
        child: Image.asset(imgList[selectImage]),
      ),
    );
  }
}
