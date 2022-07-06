import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:project_curtain/constants/constants.dart';
import 'package:project_curtain/page/add/add_customer.dart';
import 'package:project_curtain/page/customer_screen.dart';
import 'package:project_curtain/page/edit/edit_customer.dart';
import 'package:project_curtain/page/history.dart';

class Customercard extends StatelessWidget {
  const Customercard(
      {Key? key,
      required this.name,
      required this.sur,
      required this.id,
      required this.location,
      required this.email,
      required this.phone,
      required this.corporate})
      : super(key: key);

  final String? name;
  final String? sur;
  final String? id;
  final String? corporate;
  final String? location;
  final String? email;
  final String? phone;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(
          horizontal: defaultPadding, vertical: defaultPadding),
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.symmetric(
                horizontal: defaultPadding, vertical: defaultPadding),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: colorBorder,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      '$name $sur',
                      style: GoogleFonts.kanit(fontSize: bodytext),
                    ),
                    Row(
                      children: [
                        Container(
                          // padding: const EdgeInsets.all(8),
                          decoration: const BoxDecoration(
                            color: colorbgbtn,
                            boxShadow: [
                              BoxShadow(
                                color: colortext2,
                                blurRadius: 5,
                                offset: (Offset(4, 4)),
                              ),
                            ],
                            // border: Border.all(color: Colors.grey),
                          ),
                          child: IconButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const HistoryScreen(),
                                ),
                              );
                            },
                            icon: const Icon(Icons.history),
                            color: colortext1,
                          ),
                        ),
                        Container(
                          // padding: const EdgeInsets.all(8),
                          decoration: const BoxDecoration(
                            color: colorbgbtn,
                            boxShadow: [
                              BoxShadow(
                                color: colortext2,
                                blurRadius: 5,
                                offset: (Offset(4, 4)),
                              ),
                            ],
                            // border: Border.all(color: Colors.grey),
                          ),
                          child: IconButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const EditCustomer(),
                                ),
                              );
                            },
                            icon: const Icon(Icons.edit),
                            color: colortext1,
                          ),
                        ),
                        Container(
                          // padding: const EdgeInsets.all(8),
                          decoration: const BoxDecoration(
                            // border: Border.all(color: Colors.grey),
                            color: colortext1,
                            boxShadow: [
                              BoxShadow(
                                color: colortext2,
                                blurRadius: 5,
                                offset: (Offset(4, 4)),
                              ),
                            ],
                          ),
                          child: IconButton(
                            onPressed: () {},
                            icon: const Icon(Icons.delete_outline),
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                const Divider(
                  color: colortext1,
                  height: 0,
                  thickness: 1,
                  endIndent: 160,
                ),
                const SizedBox(height: defaultPadding),
                RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: 'เลขที่ผู้เสียภาษี ',
                        style: GoogleFonts.kanit(
                            color: Colors.grey[600], fontSize: bodytext),
                      ),
                      TextSpan(
                        text: id,
                        style: GoogleFonts.kanit(
                            color: Colors.grey[500], fontSize: bodytext),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: defaultPadding),
                RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: 'บริษัท/สถานที่ทำงาน ',
                        style: GoogleFonts.kanit(
                            color: Colors.grey[600], fontSize: bodytext),
                      ),
                      TextSpan(
                        text: corporate,
                        style: GoogleFonts.kanit(
                            color: Colors.grey[500], fontSize: bodytext),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: defaultPadding),
                RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: 'ที่อยู่ ',
                        style: GoogleFonts.kanit(
                            color: Colors.grey[600], fontSize: bodytext),
                      ),
                      TextSpan(
                        text: location,
                        style: GoogleFonts.kanit(
                            color: Colors.grey[500], fontSize: bodytext),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: defaultPadding),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: 'อีเมล ',
                            style: GoogleFonts.kanit(
                                color: Colors.grey[600], fontSize: bodytext),
                          ),
                          TextSpan(
                            text: email,
                            style: GoogleFonts.kanit(
                                color: Colors.grey[500], fontSize: bodytext),
                          ),
                        ],
                      ),
                    ),
                    Text(
                      'เบอร์ติดต่อ $phone',
                      style: GoogleFonts.kanit(
                          color: Colors.grey[600], fontSize: bodytext),
                    ),
                    Container(),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
