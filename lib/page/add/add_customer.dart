import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:project_curtain/constants/constants.dart';
import 'package:project_curtain/widget/fluttermap.dart';
import 'package:project_curtain/model/model_provider/customers.dart';
import 'package:project_curtain/widget/fluttermapcontroller.dart';
import 'package:project_curtain/widget/showdialogsaved.dart';
import 'package:provider/provider.dart';

class AddCustomer extends StatefulWidget {
  const AddCustomer({Key? key}) : super(key: key);

  @override
  _AddCustomerState createState() => _AddCustomerState();
}

class _AddCustomerState extends State<AddCustomer> {
  List<Map<String, String>> customersset = [
    {
      'name': '',
      'surname': '',
      'nickname': '',
      'email': '',
      'id': '',
      'corporate': '',
      'phone': '',
      'location': '',
      'subdistict': '',
      'distict': '',
      'province': '',
      'postnumber': '',
      'lat': '',
      'long': '',
      //---------------ที่อยู่ในใบเสร็จ
      'secondlocation': '',
      'secondsubdistict': '',
      'seconddistict': '',
      'secondprovince': '',
      'secondpostnumber': '',
      //----------สถานที่ติดตั้งผ้าม่าน
      'workname': '',
      'workphone': '',
      'worklocation': '',
      'worksubdistict': '',
      'workdistict': '',
      'workprovince': '',
      'workpostnumber': '',
      'worklat': '',
      'worklong': ''
    }
  ];

  dynamic address = 0;

  final _formKey = GlobalKey<FormState>();
  Map<String, String> temp = {'': ''};

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(Icons.arrow_back_ios_new),
          color: colorBlack,
        ),
        title: Text(
          'เพิ่มข้อมูลลูกค้า',
          style: GoogleFonts.kanit(color: Colors.black, fontSize: subtitle),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          margin: const EdgeInsets.symmetric(
              horizontal: defaultPadding, vertical: defaultPadding),
          child: Form(
            key: _formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Expanded(
                      flex: 1,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding:
                                const EdgeInsets.only(left: defaultPadding),
                            child: RichText(
                              text: TextSpan(
                                children: [
                                  TextSpan(
                                    text: 'ชื่อ',
                                    style: GoogleFonts.kanit(
                                        fontSize: bodytext, color: colorBlack),
                                  ),
                                  TextSpan(
                                    text: '*',
                                    style: GoogleFonts.kanit(
                                      color: colorRed,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          const SizedBox(height: defaultPadding),
                          TextFormField(
                            onSaved: (value) =>
                                customersset[0]['name'] = value.toString(),
                            decoration: InputDecoration(
                              hintText: 'ชื่อ',
                              hintStyle: GoogleFonts.kanit(
                                  color: Colors.grey, fontSize: bodytext),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                              errorStyle: GoogleFonts.kanit(fontSize: bodytext),
                            ),
                            validator: (value) {
                              if (value!.isNotEmpty) {
                                return null;
                              } else {
                                return 'โปรดกรอกชื่อ';
                              }
                            },
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(width: defaultPadding),
                    Expanded(
                      flex: 1,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding:
                                const EdgeInsets.only(left: defaultPadding),
                            child: RichText(
                              text: TextSpan(
                                children: [
                                  TextSpan(
                                    text: 'นามสกุล',
                                    style: GoogleFonts.kanit(
                                        fontSize: bodytext, color: colorBlack),
                                  ),
                                  TextSpan(
                                    text: '*',
                                    style: GoogleFonts.kanit(
                                      color: colorRed,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          const SizedBox(height: defaultPadding),
                          TextFormField(
                            onSaved: (value) =>
                                customersset[0]['surname'] = value.toString(),
                            decoration: InputDecoration(
                              hintText: 'นามสกุล',
                              hintStyle: GoogleFonts.kanit(
                                  color: Colors.grey, fontSize: bodytext),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                              errorStyle: GoogleFonts.kanit(fontSize: bodytext),
                            ),
                            validator: (value) {
                              if (value!.isNotEmpty) {
                                return null;
                              } else {
                                return 'โปรดกรอกนามสกุล';
                              }
                            },
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: defaultPadding),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Expanded(
                      flex: 1,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding:
                                const EdgeInsets.only(left: defaultPadding),
                            child: Text(
                              'ชื่อเล่น :',
                              style: GoogleFonts.kanit(fontSize: bodytext),
                            ),
                          ),
                          const SizedBox(height: defaultPadding),
                          TextFormField(
                            onSaved: (value) =>
                                customersset[0]['nickname'] = value.toString(),
                            decoration: InputDecoration(
                              hintText: 'ชื่อเล่น',
                              hintStyle: GoogleFonts.kanit(
                                  color: Colors.grey, fontSize: bodytext),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(width: defaultPadding),
                    Expanded(
                      flex: 1,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding:
                                const EdgeInsets.only(left: defaultPadding),
                            child: RichText(
                              text: TextSpan(
                                children: [
                                  TextSpan(
                                    text: 'อีเมล',
                                    style: GoogleFonts.kanit(
                                        fontSize: bodytext, color: colorBlack),
                                  ),
                                  TextSpan(
                                    text: '*',
                                    style: GoogleFonts.kanit(
                                      color: colorRed,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          const SizedBox(height: defaultPadding),
                          TextFormField(
                              onSaved: (value) =>
                                  customersset[0]['email'] = value.toString(),
                              decoration: InputDecoration(
                                hintText: 'อีเมล',
                                hintStyle: GoogleFonts.kanit(
                                    color: Colors.grey, fontSize: bodytext),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                errorStyle:
                                    GoogleFonts.kanit(fontSize: bodytext),
                              ),
                              validator: (value) {
                                if (value!.isNotEmpty) {
                                  return null;
                                } else {
                                  return 'โปรดกรอก อีเมล';
                                }
                              }),
                        ],
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: defaultPadding),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Expanded(
                      flex: 1,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding:
                                const EdgeInsets.only(left: defaultPadding),
                            child: Text(
                              'เลขที่ผู้เสียภาษี :',
                              style: GoogleFonts.kanit(fontSize: bodytext),
                            ),
                          ),
                          const SizedBox(height: defaultPadding),
                          TextFormField(
                            onSaved: (value) =>
                                customersset[0]['id'] = value.toString(),
                            decoration: InputDecoration(
                              hintText: 'เลขที่ผู้เสียภาษี',
                              hintStyle: GoogleFonts.kanit(
                                  color: Colors.grey, fontSize: bodytext),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(width: defaultPadding),
                    Expanded(
                      flex: 1,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding:
                                const EdgeInsets.only(left: defaultPadding),
                            child: Text(
                              'บริษัท/สถานที่ทำงาน :',
                              style: GoogleFonts.kanit(fontSize: bodytext),
                            ),
                          ),
                          const SizedBox(height: defaultPadding),
                          TextFormField(
                            onSaved: (value) =>
                                customersset[0]['corporate'] = value.toString(),
                            decoration: InputDecoration(
                              hintText: 'บริษัท/สถานที่ทำงาน',
                              hintStyle: GoogleFonts.kanit(
                                  color: Colors.grey, fontSize: bodytext),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: defaultPadding),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Expanded(
                      flex: 1,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding:
                                const EdgeInsets.only(left: defaultPadding),
                            child: RichText(
                              text: TextSpan(
                                children: [
                                  TextSpan(
                                    text: 'เบอร์โทรศัพท์',
                                    style: GoogleFonts.kanit(
                                        fontSize: bodytext, color: colorBlack),
                                  ),
                                  TextSpan(
                                    text: '*',
                                    style: GoogleFonts.kanit(
                                      color: colorRed,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          const SizedBox(height: defaultPadding),
                          TextFormField(
                            onSaved: (value) =>
                                customersset[0]['phone'] = value.toString(),
                            decoration: InputDecoration(
                              hintText: 'เบอร์โทรศัพท์',
                              hintStyle: GoogleFonts.kanit(
                                  color: Colors.grey, fontSize: bodytext),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                              errorStyle: GoogleFonts.kanit(fontSize: bodytext),
                            ),
                            validator: (value) {
                              if (value!.isNotEmpty) {
                                return null;
                              } else {
                                return 'โปรดกรอกเบอร์โทรศัพท์';
                              }
                            },
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(width: defaultPadding),
                    const Expanded(
                      flex: 1,
                      child: SizedBox(),
                    ),
                  ],
                ),
                const SizedBox(height: defaultPadding),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: defaultPadding),
                      child: RichText(
                        text: TextSpan(
                          children: [
                            TextSpan(
                              text: 'ที่อยู่รับใบเสร็จ',
                              style: GoogleFonts.kanit(
                                  fontSize: bodytext, color: colorBlack),
                            ),
                            TextSpan(
                              text: '*',
                              style: GoogleFonts.kanit(
                                color: colorRed,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(height: defaultPadding),
                    TextFormField(
                      onSaved: (value) =>
                          customersset[0]['location'] = value.toString(),
                      decoration: InputDecoration(
                        hintText: 'ที่อยู่',
                        hintStyle: GoogleFonts.kanit(
                            color: Colors.grey, fontSize: bodytext),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        errorStyle: GoogleFonts.kanit(fontSize: bodytext),
                      ),
                      validator: (value) {
                        if (value!.isNotEmpty) {
                          return null;
                        } else {
                          return 'โปรดกรอกที่อยู่รับใบเสร็จ';
                        }
                      },
                    ),
                  ],
                ),
                const SizedBox(height: defaultPadding),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Expanded(
                      flex: 1,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding:
                                const EdgeInsets.only(left: defaultPadding),
                            child: Text(
                              'ตำบล :',
                              style: GoogleFonts.kanit(fontSize: bodytext),
                            ),
                          ),
                          const SizedBox(height: defaultPadding),
                          TextFormField(
                            onSaved: (value) => customersset[0]['subdistict'] =
                                value.toString(),
                            decoration: InputDecoration(
                              hintText: 'ตำบล',
                              hintStyle: GoogleFonts.kanit(
                                  color: Colors.grey, fontSize: bodytext),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(width: defaultPadding),
                    Expanded(
                      flex: 1,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding:
                                const EdgeInsets.only(left: defaultPadding),
                            child: Text(
                              'อำเภอ :',
                              style: GoogleFonts.kanit(fontSize: bodytext),
                            ),
                          ),
                          const SizedBox(height: defaultPadding),
                          TextFormField(
                            onSaved: (value) =>
                                customersset[0]['distict'] = value.toString(),
                            decoration: InputDecoration(
                              hintText: 'อำเภอ',
                              hintStyle: GoogleFonts.kanit(
                                  color: Colors.grey, fontSize: bodytext),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: defaultPadding),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Expanded(
                      flex: 1,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding:
                                const EdgeInsets.only(left: defaultPadding),
                            child: RichText(
                              text: TextSpan(
                                children: [
                                  TextSpan(
                                    text: 'จังหวัด',
                                    style: GoogleFonts.kanit(
                                        fontSize: bodytext, color: colorBlack),
                                  ),
                                  TextSpan(
                                    text: '*',
                                    style: GoogleFonts.kanit(
                                      color: colorRed,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          const SizedBox(height: defaultPadding),
                          TextFormField(
                            onSaved: (value) =>
                                customersset[0]['province'] = value.toString(),
                            decoration: InputDecoration(
                              hintText: 'จังหวัด',
                              hintStyle: GoogleFonts.kanit(
                                  color: Colors.grey, fontSize: bodytext),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                              errorStyle: GoogleFonts.kanit(fontSize: bodytext),
                            ),
                            validator: (value) {
                              if (value!.isNotEmpty) {
                                return null;
                              } else {
                                return 'โปรดกรอกจังหวัด';
                              }
                            },
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(width: defaultPadding),
                    Expanded(
                      flex: 1,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding:
                                const EdgeInsets.only(left: defaultPadding),
                            child: RichText(
                              text: TextSpan(
                                children: [
                                  TextSpan(
                                    text: 'รหัสไปรษณีย์',
                                    style: GoogleFonts.kanit(
                                        fontSize: bodytext, color: colorBlack),
                                  ),
                                  TextSpan(
                                    text: '*',
                                    style: GoogleFonts.kanit(
                                      color: colorRed,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          const SizedBox(height: defaultPadding),
                          TextFormField(
                            onSaved: (value) => customersset[0]['postnumber'] =
                                value.toString(),
                            decoration: InputDecoration(
                              hintText: 'รหัสไปรษณีย์',
                              hintStyle: GoogleFonts.kanit(
                                  color: Colors.grey, fontSize: bodytext),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                              errorStyle: GoogleFonts.kanit(fontSize: bodytext),
                            ),
                            validator: (value) {
                              if (value!.isNotEmpty) {
                                return null;
                              } else {
                                return 'โปรดกรอกรหัสไปรษณีย์';
                              }
                            },
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: defaultPadding),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: defaultPadding),
                      child: Text(
                        'สถานที่ติดตั้งงาน',
                        style: GoogleFonts.kanit(
                            fontSize: bodytext, color: colorBlack),
                      ),
                    ),
                  ],
                ),
                const Divider(),
                const SizedBox(height: defaultPadding),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Expanded(
                      flex: 1,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding:
                                const EdgeInsets.only(left: defaultPadding),
                            child: Text(
                              'ชื่อ-นามสกุลผู้ประสานงาน',
                              style: GoogleFonts.kanit(fontSize: bodytext),
                            ),
                          ),
                          const SizedBox(height: defaultPadding),
                          TextFormField(
                            onSaved: (value) =>
                                customersset[0]['workname'] = value.toString(),
                            decoration: InputDecoration(
                              hintText: 'ชื่อ',
                              hintStyle: GoogleFonts.kanit(
                                  color: Colors.grey, fontSize: bodytext),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(width: defaultPadding),
                    Expanded(
                      flex: 1,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding:
                                const EdgeInsets.only(left: defaultPadding),
                            child: Text(
                              'เบอร์โทรศัพท์',
                              style: GoogleFonts.kanit(fontSize: bodytext),
                            ),
                          ),
                          const SizedBox(height: defaultPadding),
                          TextFormField(
                            onSaved: (value) =>
                                customersset[0]['workphone'] = value.toString(),
                            decoration: InputDecoration(
                              hintText: 'เบอร์โทรศัพท์',
                              hintStyle: GoogleFonts.kanit(
                                  color: Colors.grey, fontSize: bodytext),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
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
                    Radio(
                      activeColor: colortext1,
                      value: 1,
                      groupValue: address,
                      toggleable: true,
                      onChanged: (value) {
                        setState(() {
                          address = value;
                        });
                      },
                    ),
                    Text(
                      'เหมือนที่อยู่รับใบเสร็จ',
                      style: GoogleFonts.kanit(
                          fontSize: bodytext, color: colortext1),
                    ),
                  ],
                ),
                const SizedBox(height: defaultPadding),
                TextFormField(
                  onSaved: (value) =>
                      customersset[0]['worklocation'] = value.toString(),
                  decoration: InputDecoration(
                    hintText: 'ที่อยู่',
                    hintStyle: GoogleFonts.kanit(
                        color: Colors.grey, fontSize: bodytext),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    errorStyle: GoogleFonts.kanit(fontSize: bodytext),
                  ),
                  validator: (value) {
                    if (value!.isNotEmpty) {
                      return null;
                    } else {
                      return 'โปรดกรอกที่อยู่รับใบเสร็จ';
                    }
                  },
                ),
                const SizedBox(height: defaultPadding),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Expanded(
                      flex: 1,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'ตำบล :',
                            style: GoogleFonts.kanit(fontSize: bodytext),
                          ),
                          const SizedBox(height: defaultPadding),
                          TextFormField(
                            onSaved: (value) => customersset[0]
                                ['worksubdistick'] = value.toString(),
                            decoration: InputDecoration(
                              hintText: 'ตำบล',
                              hintStyle: GoogleFonts.kanit(
                                  color: Colors.grey, fontSize: bodytext),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(width: defaultPadding),
                    Expanded(
                      flex: 1,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'อำเภอ :',
                            style: GoogleFonts.kanit(fontSize: bodytext),
                          ),
                          const SizedBox(height: defaultPadding),
                          TextFormField(
                            onSaved: (value) =>
                                customersset[0]['distick'] = value.toString(),
                            decoration: InputDecoration(
                              hintText: 'อำเภอ',
                              hintStyle: GoogleFonts.kanit(
                                  color: Colors.grey, fontSize: bodytext),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: defaultPadding),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Expanded(
                      flex: 1,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          RichText(
                            text: TextSpan(
                              children: [
                                TextSpan(
                                  text: 'จังหวัด',
                                  style: GoogleFonts.kanit(
                                      fontSize: bodytext, color: colorBlack),
                                ),
                                TextSpan(
                                  text: '*',
                                  style: GoogleFonts.kanit(
                                    color: colorRed,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(height: defaultPadding),
                          TextFormField(
                            onSaved: (value) => customersset[0]
                                ['workprovince'] = value.toString(),
                            decoration: InputDecoration(
                              hintText: 'จังหวัด',
                              hintStyle: GoogleFonts.kanit(
                                  color: Colors.grey, fontSize: bodytext),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                              errorStyle: GoogleFonts.kanit(fontSize: bodytext),
                            ),
                            validator: (value) {
                              if (value!.isNotEmpty) {
                                return null;
                              } else {
                                return 'โปรดกรอกจังหวัด';
                              }
                            },
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(width: defaultPadding),
                    Expanded(
                      flex: 1,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          RichText(
                            text: TextSpan(
                              children: [
                                TextSpan(
                                  text: 'รหัสไปรษณีย์',
                                  style: GoogleFonts.kanit(
                                      fontSize: bodytext, color: colorBlack),
                                ),
                                TextSpan(
                                  text: '*',
                                  style: GoogleFonts.kanit(
                                    color: colorRed,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(height: defaultPadding),
                          TextFormField(
                            onSaved: (value) => customersset[0]['postnumber'] =
                                value.toString(),
                            decoration: InputDecoration(
                              hintText: 'รหัสไปรษณีย์',
                              hintStyle: GoogleFonts.kanit(
                                  color: Colors.grey, fontSize: bodytext),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: defaultPadding),
                Container(
                  padding: const EdgeInsets.symmetric(
                      horizontal: defaultPadding, vertical: defaultPadding),
                  child: Row(
                    children: [
                      Text(
                        'แผนที่สถานที่ติดตั้งงาน',
                        style: GoogleFonts.kanit(fontSize: bodytext),
                      ),
                      const Icon(Icons.location_on_rounded),
                    ],
                  ),
                ),
                const SizedBox(height: defaultPadding),
                const PointToLatLngPage(),
                const SizedBox(height: defaultPadding * 2),
                Align(
                  alignment: Alignment.center,
                  child: SizedBox(
                    width: 100,
                    height: 50,
                    child: ElevatedButton.icon(
                      style: ElevatedButton.styleFrom(
                        primary: const Color(0xFF707070),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(28),
                        ),
                      ),
                      onPressed: () {
                        if (!_formKey.currentState!.validate()) {
                          return;
                        } else {
                          _formKey.currentState!.save();
                          context
                              .read<Customers>()
                              .customercreate(customersset);

                          setState(() {
                            // _formKey.currentState!.reset();
                            Navigator.pop(context);
                            showdialog(context);
                          });
                        }
                      },
                      icon: const Icon(Icons.save),
                      label: Text(
                        'บันทึก',
                        style: GoogleFonts.kanit(fontSize: bodytext),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: defaultPadding * 2),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
