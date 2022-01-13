import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:numberpicker/numberpicker.dart';
import 'package:pattern_formatter/pattern_formatter.dart';
import 'package:project_curtain/format.dart';
import 'package:project_curtain/screen/constants/constants.dart';

class OrderScreen extends StatefulWidget {
  const OrderScreen({Key? key}) : super(key: key);

  @override
  _OrderScreenState createState() => _OrderScreenState();
}

enum HeightUnit { meter, cm }

class _OrderScreenState extends State<OrderScreen> {
  var curtain = ['ผ้าม่านตาไก่', 'ผ้าม่านจับ', 'ผ้าม่านลอน'];
  var age = 25;
  String? dropdownValue;
  double check = 0.9;
  double result = 0;
  double height = 0;
  double _currentDoubleValue = 0;
  // int currentindex = 0;
  bool isChecked = false;
  dynamic _cloth = 1;
  int a = 0;
  TextEditingController widthController = TextEditingController();
  TextEditingController priceController = TextEditingController();
  TextEditingController _height = TextEditingController();

  // final List cloth = [
  //   {'value': 1, 'text': 'ผ้าหน้ากว้าง'},
  //   {'value': 2, 'text': 'ผ้าหน้าแคบ'}
  // ];
  HeightUnit selectedUnit = HeightUnit.meter;
  TextEditingController heightControlller = TextEditingController();

  // int ft = 0;
  // int inches = 0;
  // String? cm;
  //
  // cmToInches(inchess) {
  //   ft = inchess ~/ 12;
  //   inchess = inchess % 12;
  //   print('$ft feet and  $inches inches');
  // }
  //
  // inchesToCm() {
  //   int inchesTotal = (ft * 12) + inches;
  //   cm = (inchesTotal * 2.54).toStringAsPrecision(5);
  //   heightControlller.text = cm!;
  // }
  //
  // void checkHeightUnit() {
  //   if (selectedUnit == HeightUnit.ft) {
  //     setState(() {
  //       int inchess = (double.parse(heightControlller.text) ~/ 2.54).toInt();
  //       cmToInches(inchess);
  //       heightControlller.text = '$ft\' $inches';
  //     });
  //   } else if (selectedUnit == HeightUnit.cm) {
  //     setState(() {
  //       print(heightControlller.text);
  //       inchesToCm();
  //     });
  //   }
  // }

  int meter = 0;
  int _meter = 0;
  String? cm;

  cmToMeter(_cm) {
    double meter = _cm / 100;
    // inchess = inchess % 100;
    print('$meter meter');
  }

  meterToCm() {
    int meterTotal = (meter * 100) + _meter;
    cm = (meterTotal).toStringAsFixed(2);
    heightControlller.text = cm!;
  }

  void checkHeightUnit() {
    if (selectedUnit == HeightUnit.meter) {
      setState(() {
        int meters = (double.parse(heightControlller.text)).toInt();
        cmToMeter(meters);
        heightControlller.text = '$meter . $_meter';
        a = meters;
      });
    } else if (selectedUnit == HeightUnit.cm) {
      setState(() {
        print('$cm cm');
        meterToCm();
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('เลือกชนิดผ้าม่าน', style: GoogleFonts.kanit(fontSize: 16)),
              const SizedBox(height: defaultPadding / 2),
              DropdownButtonHideUnderline(
                child: DropdownButtonFormField(
                  icon: const Icon(Icons.arrow_drop_down),
                  decoration: InputDecoration(
                    hintText: 'โปรดเลือก',
                    hintStyle: GoogleFonts.kanit(color: Colors.black),
                    enabledBorder: OutlineInputBorder(
                        borderSide: const BorderSide(color: Colors.black),
                        borderRadius: BorderRadius.circular(30)),
                  ),
                  onChanged: (String? newValue) {
                    setState(() {
                      dropdownValue = newValue!;
                    });
                  },
                  items: curtain.map((String item) {
                    return DropdownMenuItem(
                      value: item,
                      child: Text(item, style: GoogleFonts.kanit()),
                    );
                  }).toList(),
                ),
              ),
              const SizedBox(height: defaultPadding / 2),
              Text('เลือกหน้าผ้า', style: GoogleFonts.kanit(fontSize: 16)),
              const SizedBox(height: defaultPadding / 2),
              DropdownButtonHideUnderline(
                child: DropdownButtonFormField(
                  decoration: InputDecoration(
                      hintText: 'โปรดเลือก',
                      hintStyle: GoogleFonts.kanit(color: Colors.black),
                      enabledBorder: OutlineInputBorder(
                          borderSide: const BorderSide(color: Colors.black),
                          borderRadius: BorderRadius.circular(30))),
                  value: _cloth,
                  onChanged: (value) {
                    setState(() {
                      _cloth = value;
                    });
                  },
                  // items: cloth.map((item) {
                  //   return DropdownMenuItem(
                  //     child: Text(item),
                  //     value: item,
                  //   );
                  // }).toList(),
                  items: [
                    DropdownMenuItem(
                      value: 1,
                      child: Text('ผ้าหน้ากว้าง', style: GoogleFonts.kanit()),
                    ),
                    DropdownMenuItem(
                      value: 2,
                      child: Text('ผ้าหน้าแคบ', style: GoogleFonts.kanit()),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: defaultPadding / 2),
              Text('ความสูงผ้าม่าน (เมตร)',
                  style: GoogleFonts.kanit(fontSize: 16)),
              const SizedBox(height: defaultPadding / 2),
              TextField(
                controller: _height,
                onChanged: (value) {
                  if (double.tryParse(value) != null &&
                      int.parse(value.replaceAll('.', '')) <= 26) {
                    setState(() {
                      height = 2.2;
                    });
                  } else {
                    setState(() {
                      height = 2.6;
                    });
                  }
                },
                keyboardType: TextInputType.number,
                textInputAction: TextInputAction.next,
                inputFormatters: [ThousandsFormatter(allowFraction: true)],
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
                  style: GoogleFonts.kanit(fontSize: 16)),
              const SizedBox(height: defaultPadding / 2),
              TextFormField(
                textInputAction: TextInputAction.next,
                keyboardType: TextInputType.number,
                inputFormatters: [ThousandsFormatter(allowFraction: true)],
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
              Text('ราคาผ้าม่าน (บาท)', style: GoogleFonts.kanit(fontSize: 16)),
              const SizedBox(height: defaultPadding / 2),
              TextFormField(
                keyboardType: TextInputType.number,
                textInputAction: TextInputAction.done,
                inputFormatters: [ThousandsFormatter(allowFraction: true)],
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
              Theme(
                data: Theme.of(context)
                    .copyWith(unselectedWidgetColor: Colors.black),
                child: CheckboxListTile(
                  title: Text('สลับหน้าผ้า', style: GoogleFonts.kanit()),
                  controlAffinity: ListTileControlAffinity.leading,
                  activeColor: Colors.black,
                  value: isChecked,
                  // tristate: false,
                  // checkColor: Colors.black,
                  onChanged: (bool? value) {
                    if (isChecked) {
                      setState(() {
                        isChecked = false;
                        check = 0.9;
                      });
                    } else {
                      setState(() {
                        isChecked = true;
                        check = 2.8;
                      });
                    }
                  },
                ),
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
                    double width = double.parse(widthController.value.text);
                    double price = double.parse(priceController.value.text);
                    calculate(width, price);
                    // calculate(width, price);
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
                    style: GoogleFonts.kanit(fontSize: 18, color: Colors.blue),
                  ),
                  Text(
                    '${GoogleSignInApi.formatNumber(result)}',
                    style: GoogleFonts.kanit(fontSize: 24, color: Colors.blue),
                  ),
                  Text(
                    'บาท ',
                    style: GoogleFonts.kanit(fontSize: 18, color: Colors.blue),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

  void calculate(double width, double price) {
    // double total = (((width * height) / check)) * price;
    double total = (((width * height) / check) * _cloth) * price;

    setState(() {
      result = total;
    });
  }

  // void changeIndex(int index) {
  //   setState(() {
  //     currentindex = index;
  //   });
  // }
}
