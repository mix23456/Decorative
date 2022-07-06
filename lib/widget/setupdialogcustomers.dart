import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:project_curtain/constants/constants.dart';
import 'package:project_curtain/model/model_provider/customers.dart';
import 'package:provider/provider.dart';

Widget setupDialogCustomers() {
  return SizedBox(
    height: 300,
    width: 300,
    child: ListView.builder(
      shrinkWrap: true,
      itemCount: Customers.customersinfo.length,
      itemBuilder: (BuildContext context, int index) {
        return ListTile(
          onTap: () {
            context
                .read<Customers>()
                .setname(Customers.customersinfo[index]['name'].toString());
            Navigator.pop(context);
          },
          title: Text(Customers.customersinfo[index]['name'].toString(),
              style: GoogleFonts.kanit(fontSize: bodytext)),
        );
      },
    ),
  );
}
