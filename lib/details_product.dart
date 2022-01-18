import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

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
                icon: Icon(
                  Icons.arrow_back_ios,
                  color: Colors.black,
                )),
            centerTitle: true,
            title: Text(
              'PRODUCT',
              style: GoogleFonts.kanit(
                color: Colors.black,
              ),
            ),
            actions: [
              IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.search,
                    color: Colors.black,
                  ))
            ]),
        body: SingleChildScrollView(
            child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(children: [
            SizedBox(
              width: 238,
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
                ...List.generate(
                  imgList.length,
                  (index) => buildSmallPreview(index),
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
            const SizedBox(height: 10),
            Text(
              'ม่านสองชั้น',
              style: GoogleFonts.kanit(fontSize: 24),
            ),
            const SizedBox(height: 10),
            Row(
              children: [
                Text('ชนิดผ้า : ',
                    style: GoogleFonts.kanit(color: Colors.black54)),
                Text('ผ้าหน้าทึบแคบ Acacia',
                    style: GoogleFonts.kanit(color: Colors.black26)),
              ],
            ),
            const SizedBox(height: 5),
            Row(
              children: [
                Text('รหัสสี : ',
                    style: GoogleFonts.kanit(color: Colors.black54)),
                Text('#ABAAAC',
                    style: GoogleFonts.kanit(color: Colors.black26)),
              ],
            ),
            const SizedBox(height: 5),
            Row(
              children: [
                Text('ราคา / ชิ้น : ',
                    style: GoogleFonts.kanit(color: Colors.black54)),
                Text('฿ 400.00',
                    style: GoogleFonts.kanit(color: Colors.black26)),
              ],
            ),
            const SizedBox(height: 5),
            Row(
              children: [
                Text('จำนวน : ',
                    style: GoogleFonts.kanit(color: Colors.black54)),
                Container(
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey),
                      borderRadius: BorderRadius.circular(4)),
                  height: 20,
                  width: 100,
                  child: Row(
                    children: [
                      Material(
                        color: Colors.transparent,
                        child: InkWell(
                          onTap: () {
                            if (numOfItem > 1) {
                              setState(() {
                                numOfItem--;
                              });
                            }
                          },
                          child: Container(
                            alignment: Alignment.center,
                            margin: const EdgeInsets.only(left: 4),
                            width: 15,
                            child: Icon(
                              Icons.remove,
                              color: numOfItem == 1 ? Colors.grey : Colors.grey,
                              size: 10,
                            ),
                          ),
                        ),
                      ),
                      const VerticalDivider(
                        color: Colors.black,
                      ),
                      Container(
                        width: 25,
                        decoration: const BoxDecoration(color: Colors.white),
                        child: Text(numOfItem.toString(),
                            textAlign: TextAlign.center,
                            style: GoogleFonts.kanit(
                                fontSize: 10, color: Colors.grey)),
                      ),
                      const VerticalDivider(
                        color: Colors.grey,
                      ),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            numOfItem++;
                          });
                        },
                        child: Container(
                          alignment: Alignment.center,
                          margin: const EdgeInsets.only(right: 4),
                          width: 15,
                          child: const Icon(
                            Icons.add,
                            color: Colors.grey,
                            size: 10,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                // SizedBox(
                //   width: 40,
                //   height: 32,
                //   child: ElevatedButton(
                //       style: ElevatedButton.styleFrom(
                //           padding: EdgeInsets.zero,
                //           shape: RoundedRectangleBorder(
                //               borderRadius: BorderRadius.circular(5)),
                //           side: const BorderSide(color: Colors.grey),
                //           primary: Colors.white,
                //           elevation: 0),
                //       onPressed: () {
                //         if (numOfItem > 1) {
                //           setState(() {
                //             numOfItem--;
                //           });
                //         }
                //       },
                //       child: const Icon(
                //         Icons.remove,
                //         color: Colors.grey,
                //       )),
                // ),
                // const SizedBox(width: 10),
                // Text(numOfItem.toString().padLeft(2, "0"),
                //     style: GoogleFonts.kanit(color: Colors.black26)),
                // const SizedBox(width: 10),
                // SizedBox(
                //   width: 40,
                //   height: 32,
                //   child: ElevatedButton(
                //       style: ElevatedButton.styleFrom(
                //           padding: EdgeInsets.zero,
                //           shape: RoundedRectangleBorder(
                //               borderRadius: BorderRadius.circular(5)),
                //           side: const BorderSide(color: Colors.grey),
                //           primary: Colors.black38,
                //           elevation: 0),
                //       onPressed: () {
                //         setState(() {
                //           numOfItem++;
                //         });
                //       },
                //       child: const Icon(
                //         Icons.add,
                //         color: Colors.white,
                //       )),
                // ),
              ],
            ),
            const SizedBox(height: 5),
            Row(
              children: [
                Text('ราคารวม : ',
                    style: GoogleFonts.kanit(color: Colors.black54)),
                Text('฿ 400.00',
                    style: GoogleFonts.kanit(color: Colors.black26)),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                SizedBox(
                  width: 150,
                  child: ElevatedButton.icon(
                      style: ElevatedButton.styleFrom(
                          elevation: 0,
                          primary: Colors.black12,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30))),
                      onPressed: () {},
                      icon: const Icon(
                        Icons.edit,
                        color: Colors.grey,
                      ),
                      label: Text(
                        'แก้ไขสินค้า',
                        style: GoogleFonts.kanit(color: Colors.black54),
                      )),
                ),
                SizedBox(
                  width: 150,
                  child: ElevatedButton.icon(
                      style: ElevatedButton.styleFrom(
                          elevation: 0,
                          primary: Colors.grey,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30))),
                      onPressed: () {},
                      icon: const Icon(Icons.shopping_cart),
                      label: Text(
                        'เพิ่มเข้าออเดอร์',
                        style: GoogleFonts.kanit(),
                      )),
                ),
              ],
            ),
          ]),
        )));
  }

  GestureDetector buildSmallPreview(int index) {
    return GestureDetector(
      onTap: () {
        setState(() {
          selectImage = index;
        });
      },
      child: Container(
        margin: EdgeInsets.only(right: 15),
        padding: EdgeInsets.all(10),
        height: 48,
        width: 48,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(18),
          border: Border.all(
            color:
                selectImage == index ? Color(0xFFFF7643) : Colors.transparent,
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