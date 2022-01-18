import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:project_curtain/screen/constants/constants.dart';
import 'package:project_curtain/details_product.dart';

class ProductScreen extends StatefulWidget {
  const ProductScreen({Key? key}) : super(key: key);

  @override
  _ProductScreenState createState() => _ProductScreenState();
}

class _ProductScreenState extends State<ProductScreen> {
  bool? curtain1 = false;
  bool? curtain2 = false;
  bool? curtain3 = false;
  bool? curtain4 = false;
  bool? curtain5 = false;
  bool? curtain6 = false;
  bool? curtain7 = false;
  bool? chick1 = false;
  bool? chick2 = false;
  bool? chick3 = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        title: Text(
          'PRODUCTS',
          style: GoogleFonts.kanit(color: Colors.black),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.search),
            color: Colors.black,
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(
                    left: defaultPadding / 2,
                    right: defaultPadding / 2,
                    top: defaultPadding / 2),
                child: Row(
                  children: [
                    Expanded(
                      child: Container(
                        height: 200,
                        color: Colors.transparent,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(12),
                          child: InkWell(
                            onTap: () {
                              // Navigator.of(context).push(MaterialPageRoute(
                              //   builder: (context) => const DetailScreen(),
                              // ));
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => DetailScreen(),
                                  ));
                            },
                            child: GridTile(
                              child: Image.network(
                                'https://resources.pulse.icc-cricket.com/ICC/photo/2018/04/22/c19486c2-4e5b-48c4-82af-c6d0eebb7bd2/Main.jpg',
                                fit: BoxFit.cover,
                              ),
                              footer: Container(
                                padding: const EdgeInsets.all(8),
                                color: Colors.black.withOpacity(.5),
                                child: Text(
                                  'ม่านรายริ้ว วินเทจ',
                                  style: GoogleFonts.kanit(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                    fontSize: 13,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(width: defaultPadding / 2),
                    Expanded(
                      child: Container(
                        height: 200,
                        color: Colors.transparent,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(12),
                          child: InkWell(
                            onTap: () {},
                            child: GridTile(
                              child: Image.network(
                                'https://resources.pulse.icc-cricket.com/ICC/photo/2018/04/22/c19486c2-4e5b-48c4-82af-c6d0eebb7bd2/Main.jpg',
                                fit: BoxFit.cover,
                              ),
                              footer: Container(
                                padding: const EdgeInsets.all(8),
                                color: Colors.black.withOpacity(.5),
                                child: Text(
                                  'ม่านพับ',
                                  style: GoogleFonts.kanit(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                    fontSize: 13,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: defaultPadding / 2),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: defaultPadding / 2),
                child: Row(
                  children: [
                    Expanded(
                      child: Container(
                        height: 200,
                        color: Colors.transparent,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(12),
                          child: InkWell(
                            onTap: () {},
                            child: GridTile(
                              child: Image.network(
                                'https://resources.pulse.icc-cricket.com/ICC/photo/2018/04/22/c19486c2-4e5b-48c4-82af-c6d0eebb7bd2/Main.jpg',
                                fit: BoxFit.cover,
                              ),
                              footer: Container(
                                padding: const EdgeInsets.all(8),
                                color: Colors.black.withOpacity(.5),
                                child: Text(
                                  'ม่านตาไก่',
                                  style: GoogleFonts.kanit(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                    fontSize: 13,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(width: defaultPadding / 2),
                    Expanded(
                      child: Container(
                        height: 200,
                        color: Colors.transparent,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(12),
                          child: InkWell(
                            onTap: () {},
                            child: GridTile(
                              child: Image.network(
                                'https://resources.pulse.icc-cricket.com/ICC/photo/2018/04/22/c19486c2-4e5b-48c4-82af-c6d0eebb7bd2/Main.jpg',
                                fit: BoxFit.cover,
                              ),
                              footer: Container(
                                padding: const EdgeInsets.all(8),
                                color: Colors.black.withOpacity(.5),
                                child: Text(
                                  'ม่านลอน',
                                  style: GoogleFonts.kanit(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                    fontSize: 13,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: defaultPadding / 2),
              Padding(
                padding: const EdgeInsets.all(defaultPadding / 2),
                child: Row(
                  children: [
                    Expanded(
                      child: Container(
                        height: 200,
                        color: Colors.transparent,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(12),
                          child: InkWell(
                            onTap: () {},
                            child: GridTile(
                              child: Image.network(
                                'https://resources.pulse.icc-cricket.com/ICC/photo/2018/04/22/c19486c2-4e5b-48c4-82af-c6d0eebb7bd2/Main.jpg',
                                fit: BoxFit.cover,
                              ),
                              footer: Container(
                                padding: const EdgeInsets.all(8),
                                color: Colors.black.withOpacity(.5),
                                child: Text(
                                  'ผ้าโปร่งแสง',
                                  style: GoogleFonts.kanit(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                    fontSize: 13,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(width: defaultPadding / 2),
                    Expanded(
                      child: Container(
                        height: 200,
                        color: Colors.transparent,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(12),
                          child: InkWell(
                            onTap: () {},
                            child: GridTile(
                              child: Image.network(
                                'https://resources.pulse.icc-cricket.com/ICC/photo/2018/04/22/c19486c2-4e5b-48c4-82af-c6d0eebb7bd2/Main.jpg',
                                fit: BoxFit.cover,
                              ),
                              footer: Container(
                                padding: const EdgeInsets.all(8),
                                color: Colors.black.withOpacity(.5),
                                child: Text(
                                  'ม่านจีบ',
                                  style: GoogleFonts.kanit(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                    fontSize: 13,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(width: defaultPadding / 2),
                    Expanded(
                      child: Container(
                        height: 200,
                        color: Colors.transparent,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(12),
                          child: InkWell(
                            onTap: () {},
                            child: GridTile(
                              child: Image.network(
                                'https://resources.pulse.icc-cricket.com/ICC/photo/2018/04/22/c19486c2-4e5b-48c4-82af-c6d0eebb7bd2/Main.jpg',
                                fit: BoxFit.cover,
                              ),
                              footer: Container(
                                padding: const EdgeInsets.all(8),
                                color: Colors.black.withOpacity(.5),
                                child: Text(
                                  'ม่านสองชั้น',
                                  style: GoogleFonts.kanit(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                    fontSize: 13,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(width: defaultPadding / 2),
                    Expanded(
                      child: Container(
                        width: 200,
                        height: 200,
                        color: Colors.transparent,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(12),
                          child: InkWell(
                            onTap: () {},
                            child: GridTile(
                              child: Image.network(
                                'https://resources.pulse.icc-cricket.com/ICC/photo/2018/04/22/c19486c2-4e5b-48c4-82af-c6d0eebb7bd2/Main.jpg',
                                fit: BoxFit.cover,
                              ),
                              footer: Container(
                                padding: const EdgeInsets.all(8),
                                color: Colors.black.withOpacity(.5),
                                child: Text(
                                  'มู่ลี่',
                                  style: GoogleFonts.kanit(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                    fontSize: 13,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: defaultPadding / 2),
              Container(
                width: 80,
                height: 30,
                child: ElevatedButton(
                  onPressed: () {
                    showDialog(
                      context: context,
                      builder: (context) {
                        return StatefulBuilder(
                          // StatefulBuilder
                          builder: (context, setState) {
                            return SingleChildScrollView(
                              child: AlertDialog(
                                actions: <Widget>[
                                  SizedBox(
                                    width: 400,
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: <Widget>[
                                        Text("ตัวกรอง",
                                            style: GoogleFonts.kanit(
                                                fontSize: 20)),
                                        // SizedBox(height: 5),
                                        const Divider(
                                            thickness: 5, color: Colors.black),
                                        const SizedBox(height: 15),
                                        Align(
                                          alignment: Alignment.centerLeft,
                                          child: Text(
                                            'หมวดหมู่: ผ้าม่าน',
                                            style: GoogleFonts.kanit(
                                              fontWeight: FontWeight.w600,
                                            ),
                                          ),
                                        ),
                                        SingleChildScrollView(
                                          child: Column(
                                            children: [
                                              SizedBox(
                                                height: 250,
                                                child: CustomScrollView(
                                                  shrinkWrap: true,
                                                  slivers: [
                                                    SliverPadding(
                                                      padding: EdgeInsets.zero,
                                                      sliver: SliverList(
                                                        delegate:
                                                            SliverChildListDelegate(
                                                          <Widget>[
                                                            CheckboxListTile(
                                                              controlAffinity:
                                                                  ListTileControlAffinity
                                                                      .leading,
                                                              value: curtain1,
                                                              title: Text(
                                                                  "ผ้าม่านสองชั้น",
                                                                  style: GoogleFonts
                                                                      .kanit()),
                                                              onChanged:
                                                                  (value) {
                                                                setState(() {
                                                                  curtain1 =
                                                                      value;
                                                                });
                                                              },
                                                            ),
                                                            const Divider(
                                                                height: 10),
                                                            CheckboxListTile(
                                                              controlAffinity:
                                                                  ListTileControlAffinity
                                                                      .leading,
                                                              value: curtain2,
                                                              title: Text(
                                                                  "ผ้าม่านพับ",
                                                                  style: GoogleFonts
                                                                      .kanit()),
                                                              onChanged:
                                                                  (value) {
                                                                setState(() {
                                                                  curtain2 =
                                                                      value;
                                                                });
                                                              },
                                                            ),
                                                            const Divider(
                                                                height: 10),
                                                            CheckboxListTile(
                                                              controlAffinity:
                                                                  ListTileControlAffinity
                                                                      .leading,
                                                              value: curtain3,
                                                              title: Text(
                                                                  "ผ้าม่านม้วน",
                                                                  style: GoogleFonts
                                                                      .kanit()),
                                                              onChanged:
                                                                  (value) {
                                                                setState(() {
                                                                  curtain3 =
                                                                      value;
                                                                });
                                                              },
                                                            ),
                                                            const Divider(
                                                                height: 10),
                                                            CheckboxListTile(
                                                              controlAffinity:
                                                                  ListTileControlAffinity
                                                                      .leading,
                                                              value: curtain4,
                                                              title: Text(
                                                                  "ผ้าม่านจีบ",
                                                                  style: GoogleFonts
                                                                      .kanit()),
                                                              onChanged:
                                                                  (value) {
                                                                setState(() {
                                                                  curtain4 =
                                                                      value;
                                                                });
                                                              },
                                                            ),
                                                            const Divider(
                                                                height: 10),
                                                            CheckboxListTile(
                                                              controlAffinity:
                                                                  ListTileControlAffinity
                                                                      .leading,
                                                              value: curtain5,
                                                              title: Text(
                                                                  "ผ้าม่านโปร่งแสง",
                                                                  style: GoogleFonts
                                                                      .kanit()),
                                                              onChanged:
                                                                  (value) {
                                                                setState(() {
                                                                  curtain5 =
                                                                      value;
                                                                });
                                                              },
                                                            ),
                                                            const Divider(
                                                                height: 10),
                                                            CheckboxListTile(
                                                              controlAffinity:
                                                                  ListTileControlAffinity
                                                                      .leading,
                                                              value: curtain6,
                                                              title: Text(
                                                                  "ผ้าม่านตาไก่",
                                                                  style: GoogleFonts
                                                                      .kanit()),
                                                              onChanged:
                                                                  (value) {
                                                                setState(() {
                                                                  curtain6 =
                                                                      value;
                                                                });
                                                              },
                                                            ),
                                                            const Divider(
                                                                height: 10),
                                                            CheckboxListTile(
                                                              controlAffinity:
                                                                  ListTileControlAffinity
                                                                      .leading,
                                                              value: curtain7,
                                                              title: Text(
                                                                  "ผ้าม่านลายริ้ว",
                                                                  style: GoogleFonts
                                                                      .kanit()),
                                                              onChanged:
                                                                  (value) {
                                                                setState(() {
                                                                  curtain7 =
                                                                      value;
                                                                });
                                                              },
                                                            ),
                                                            const Divider(
                                                                height: 10),
                                                          ],
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              SingleChildScrollView(
                                                child: Column(
                                                  children: [
                                                    SizedBox(
                                                      height: 250,
                                                      child: CustomScrollView(
                                                        shrinkWrap: true,
                                                        slivers: [
                                                          SliverPadding(
                                                            padding:
                                                                EdgeInsets.zero,
                                                            sliver: SliverList(
                                                              delegate:
                                                                  SliverChildListDelegate(
                                                                <Widget>[
                                                                  Text(
                                                                      'หมวดหมู่: มู่ลี่',
                                                                      style: GoogleFonts.kanit(
                                                                          fontWeight:
                                                                              FontWeight.w600)),
                                                                  CheckboxListTile(
                                                                    controlAffinity:
                                                                        ListTileControlAffinity
                                                                            .leading,
                                                                    value:
                                                                        chick1,
                                                                    title: Text(
                                                                        "มู่ลี่",
                                                                        style: GoogleFonts
                                                                            .kanit()),
                                                                    onChanged:
                                                                        (value) {
                                                                      setState(
                                                                          () {
                                                                        chick1 =
                                                                            value;
                                                                      });
                                                                    },
                                                                  ),
                                                                  const Divider(
                                                                      height:
                                                                          10),
                                                                  CheckboxListTile(
                                                                    controlAffinity:
                                                                        ListTileControlAffinity
                                                                            .leading,
                                                                    value:
                                                                        chick2,
                                                                    title: Text(
                                                                        "มู่ลี่ไม้",
                                                                        style: GoogleFonts
                                                                            .kanit()),
                                                                    onChanged:
                                                                        (value) {
                                                                      setState(
                                                                          () {
                                                                        chick2 =
                                                                            value;
                                                                      });
                                                                    },
                                                                  ),
                                                                  const Divider(
                                                                      height:
                                                                          10),
                                                                  CheckboxListTile(
                                                                    controlAffinity:
                                                                        ListTileControlAffinity
                                                                            .leading,
                                                                    value:
                                                                        chick3,
                                                                    title: Text(
                                                                        "มู่ลี่อลูมิเนียม",
                                                                        style: GoogleFonts
                                                                            .kanit()),
                                                                    onChanged:
                                                                        (value) {
                                                                      setState(
                                                                          () {
                                                                        chick3 =
                                                                            value;
                                                                      });
                                                                    },
                                                                  ),
                                                                  const Divider(
                                                                      height:
                                                                          10),
                                                                  const SizedBox(
                                                                      height:
                                                                          5),
                                                                ],
                                                              ),
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceEvenly,
                                                children: <Widget>[
                                                  Material(
                                                    elevation: 5.0,
                                                    color: Colors.blue[900],
                                                    child: MaterialButton(
                                                      padding: const EdgeInsets
                                                              .symmetric(
                                                          vertical: 5,
                                                          horizontal: 10),
                                                      onPressed: () {},
                                                      child: Text("Save",
                                                          textAlign:
                                                              TextAlign.center,
                                                          style:
                                                              GoogleFonts.kanit(
                                                            color: Colors.white,
                                                            fontSize: 15,
                                                          )),
                                                    ),
                                                  ),
                                                  Material(
                                                    elevation: 5.0,
                                                    color: Colors.blue[900],
                                                    child: MaterialButton(
                                                      padding: const EdgeInsets
                                                              .symmetric(
                                                          vertical: 5,
                                                          horizontal: 10),
                                                      onPressed: () {
                                                        setState(() {
                                                          Navigator.of(context)
                                                              .pop();
                                                        });
                                                      },
                                                      child: Text("Cancel",
                                                          textAlign:
                                                              TextAlign.center,
                                                          style:
                                                              GoogleFonts.kanit(
                                                            color: Colors.white,
                                                            fontSize: 15,
                                                          )),
                                                    ),
                                                  ),
                                                ],
                                              )
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            );
                          },
                        );
                      },
                    );
                  },
                  child: Text('Filter', style: GoogleFonts.kanit(fontSize: 16)),
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    primary: Colors.black38,
                  ),
                ),
              ),
              const SizedBox(height: defaultPadding),
            ],
          ),
        ),
      ),
    );
  }
}

// Scaffold(
    //   appBar: AppBar(
    //     backgroundColor: Colors.white,
    //     leading: IconButton(
    //       onPressed: () {
    //         Navigator.pop(context);
    //       },
    //       icon: const Icon(
    //         Icons.arrow_back,
    //         color: Colors.black,
    //       ),
    //     ),
    //     centerTitle: true,
    //     title: Text(
    //       'PRODUCT',
    //       style: GoogleFonts.kanit(color: Colors.black),
    //     ),
    //     actions: [
    //       IconButton(
    //         onPressed: () {},
    //         icon: const Icon(
    //           Icons.search,
    //           color: Colors.black,
    //         ),
    //       ),
    //     ],
    //   ),
    //   body: SingleChildScrollView(
    //     child: Padding(
    //       padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
    //       child: Column(
    //         children: [
    //           ImageSlideshow(
    //             width: double.infinity,
    //             height: 300,
    //             initialPage: 0,
    //             indicatorColor: Colors.white,
    //             indicatorBackgroundColor: Colors.grey,
    //             onPageChanged: (value) {
    //               debugPrint('Page changed: $value');
    //             },
    //             // autoPlayInterval: 3000,
    //             isLoop: true,
    //             children: [
    //               Image.network(
    //                 'https://images.unsplash.com/photo-1520342868574-5fa3804e551c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=6ff92caffcdd63681a35134a6770ed3b&auto=format&fit=crop&w=1951&q=80',
    //                 fit: BoxFit.cover,
    //               ),
    //               Image.network(
    //                 'https://images.unsplash.com/photo-1522205408450-add114ad53fe?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=368f45b0888aeb0b7b08e3a1084d3ede&auto=format&fit=crop&w=1950&q=80',
    //                 fit: BoxFit.cover,
    //               ),
    //               Image.network(
    //                 'https://images.unsplash.com/photo-1519125323398-675f0ddb6308?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=94a1e718d89ca60a6337a6008341ca50&auto=format&fit=crop&w=1950&q=80',
    //                 fit: BoxFit.cover,
    //               ),
    //             ],
    //           ),
    //           const SizedBox(height: 10),
    //           Text(
    //             'ม่านสองชั้น',
    //             style: GoogleFonts.kanit(fontSize: 24),
    //           ),
    //           const SizedBox(height: 10),
    //           Row(
    //             children: [
    //               Text('ชนิดผ้า : ',
    //                   style: GoogleFonts.kanit(color: Colors.black54)),
    //               Text('ผ้าหน้าทึบแคบ Acacia',
    //                   style: GoogleFonts.kanit(color: Colors.black26)),
    //             ],
    //           ),
    //           const SizedBox(height: 5),
    //           Row(
    //             children: [
    //               Text('รหัสสี : ',
    //                   style: GoogleFonts.kanit(color: Colors.black54)),
    //               Text('#ABAAAC',
    //                   style: GoogleFonts.kanit(color: Colors.black26)),
    //             ],
    //           ),
    //           const SizedBox(height: 5),
    //           Row(
    //             children: [
    //               Text('ราคา / ชิ้น : ',
    //                   style: GoogleFonts.kanit(color: Colors.black54)),
    //               Text('฿ 400.00',
    //                   style: GoogleFonts.kanit(color: Colors.black26)),
    //             ],
    //           ),
    //           const SizedBox(height: 5),
    //           Row(
    //             children: [
    //               Text('จำนวน : ',
    //                   style: GoogleFonts.kanit(color: Colors.black54)),
    //               SizedBox(
    //                 width: 40,
    //                 height: 32,
    //                 child: ElevatedButton(
    //                     style: ElevatedButton.styleFrom(
    //                         padding: EdgeInsets.zero,
    //                         shape: RoundedRectangleBorder(
    //                             borderRadius: BorderRadius.circular(5)),
    //                         side: const BorderSide(color: Colors.grey),
    //                         primary: Colors.white,
    //                         elevation: 0),
    //                     onPressed: () {
    //                       if (numOfItem > 1) {
    //                         setState(() {
    //                           numOfItem--;
    //                         });
    //                       }
    //                     },
    //                     child: const Icon(
    //                       Icons.remove,
    //                       color: Colors.grey,
    //                     )),
    //               ),
    //               const SizedBox(width: 10),
    //               Text(numOfItem.toString().padLeft(2, "0"),
    //                   style: GoogleFonts.kanit(color: Colors.black26)),
    //               const SizedBox(width: 10),
    //               SizedBox(
    //                 width: 40,
    //                 height: 32,
    //                 child: ElevatedButton(
    //                     style: ElevatedButton.styleFrom(
    //                         padding: EdgeInsets.zero,
    //                         shape: RoundedRectangleBorder(
    //                             borderRadius: BorderRadius.circular(5)),
    //                         side: const BorderSide(color: Colors.grey),
    //                         primary: Colors.black38,
    //                         elevation: 0),
    //                     onPressed: () {
    //                       setState(() {
    //                         numOfItem++;
    //                       });
    //                     },
    //                     child: const Icon(
    //                       Icons.add,
    //                       color: Colors.white,
    //                     )),
    //               ),
    //             ],
    //           ),
    //           const SizedBox(height: 5),
    //           Row(
    //             children: [
    //               Text('ราคารวม : ',
    //                   style: GoogleFonts.kanit(color: Colors.black54)),
    //               Text('฿ 400.00',
    //                   style: GoogleFonts.kanit(color: Colors.black26)),
    //             ],
    //           ),
    //           Row(
    //             mainAxisAlignment: MainAxisAlignment.spaceAround,
    //             children: [
    //               SizedBox(
    //                 width: 150,
    //                 child: ElevatedButton.icon(
    //                     style: ElevatedButton.styleFrom(
    //                         elevation: 0,
    //                         primary: Colors.black12,
    //                         shape: RoundedRectangleBorder(
    //                             borderRadius: BorderRadius.circular(30))),
    //                     onPressed: () {},
    //                     icon: const Icon(
    //                       Icons.edit,
    //                       color: Colors.grey,
    //                     ),
    //                     label: Text(
    //                       'แก้ไขสินค้า',
    //                       style: GoogleFonts.kanit(color: Colors.black54),
    //                     )),
    //               ),
    //               SizedBox(
    //                 width: 150,
    //                 child: ElevatedButton.icon(
    //                     style: ElevatedButton.styleFrom(
    //                         elevation: 0,
    //                         primary: Colors.grey,
    //                         shape: RoundedRectangleBorder(
    //                             borderRadius: BorderRadius.circular(30))),
    //                     onPressed: () {},
    //                     icon: const Icon(Icons.shopping_cart),
    //                     label: Text(
    //                       'เพิ่มเข้าออเดอร์',
    //                       style: GoogleFonts.kanit(),
    //                     )),
    //               ),
    //             ],
    //           )
    //         ],
    //       ),
    //     ),
    //   ),
    // );