import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:project_curtain/bank.dart';
import 'package:project_curtain/screen/constants/constants.dart';

class AddBank extends StatefulWidget {
  const AddBank({Key? key}) : super(key: key);

  @override
  _AddBankState createState() => _AddBankState();
}

class _AddBankState extends State<AddBank> {
  String? valueChoose;

  List listItem = ["A", "B", "C", "D", "E"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.arrow_back_ios,
            color: colorBlack,
          ),
        ),
        title: Text(
          'เพิ่มธนาคาร',
          style: GoogleFonts.kanit(color: Colors.black, fontSize: subtitle),
        ),
      ),
      body: Container(
        padding: EdgeInsets.all(defaultPadding),
        margin: EdgeInsets.all(defaultPadding),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Container(
                  width: 700,
                  child: Card(
                    // elevation: 5.0,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    child: DropdownButtonHideUnderline(
                      child: DropdownButton<String>(
                        hint: Text(
                          'เลือกธนาคาร',
                          style: GoogleFonts.kanit(),
                        ),
                        dropdownColor: Colors.white,
                        icon: const Icon(Icons.arrow_drop_down),
                        iconSize: 40.0,
                        style: GoogleFonts.kanit(
                          fontSize: 18.0,
                          color: Colors.black,
                        ),
                        value: valueChoose,
                        onChanged: (newValue) {
                          setState(() {
                            valueChoose = newValue;
                          });
                        },
                        items:
                            listItem.map<DropdownMenuItem<String>>((valueItem) {
                          return DropdownMenuItem(
                            value: valueItem,
                            child: Text(valueItem),
                          );
                        }).toList(),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: defaultPadding),
            TextField(
              decoration: InputDecoration(
                hintText: 'ชื่อบัญชี',
                hintStyle:
                    GoogleFonts.kanit(color: Colors.grey, fontSize: bodytext),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
            const SizedBox(height: defaultPadding),
            TextField(
              decoration: InputDecoration(
                hintText: 'เลขที่บัญชี',
                hintStyle:
                    GoogleFonts.kanit(color: Colors.grey, fontSize: bodytext),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
            const SizedBox(height: defaultPadding),
            TextButton(
                onPressed: () {},
                child: Text(
                  'สร้าง QR รับเงิน',
                  style: GoogleFonts.kanit(
                      color: Colors.grey,
                      fontSize: bodytext,
                      decoration: TextDecoration.underline),
                )),
            const SizedBox(height: defaultPadding),
            Align(
              alignment: Alignment.center,
              child: SizedBox(
                width: MediaQuery.of(context).size.width * 0.20,
                height: MediaQuery.of(context).size.height * 0.04,
                child: ElevatedButton.icon(
                  style: ElevatedButton.styleFrom(
                    primary: const Color(0xFF707070),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(28),
                    ),
                  ),
                  onPressed: () {
                    showDialog(
                        context: context,
                        builder: (context) {
                          return Dialog(
                            child: Container(
                                alignment: Alignment.center,
                                width: MediaQuery.of(context).size.width * 0.25,
                                height:
                                    MediaQuery.of(context).size.height * 0.1,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                child: Text(
                                  'บันทึกข้อมูลสำเร็จ',
                                  style: GoogleFonts.kanit(fontSize: bodytext),
                                )),
                          );
                        });
                    // Navigator.push(context,
                    //     MaterialPageRoute(builder: (context) => Bank()));
                  },
                  icon: const Icon(Icons.save),
                  label: Text(
                    'บันทึก',
                    style: GoogleFonts.kanit(fontSize: bodytext),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
