class Product {
  final String title, image, descliption;
  final int productcode, price;

  Product({
    required this.title,
    required this.image,
    required this.descliption,
    required this.productcode,
    required this.price,
  });
}

// เหลือ รหัสสินค้า , เลือกแบบ ,จำนวน ,
List<Product> products = [
  Product(
    title: "ชื่อสินค้า 1",
    image: "assets/images/img_1.png",
    descliption: "รายละเอียด 1",
    productcode: 00001,
    price: 100,
  ),
  Product(
    title: "ชื่อสินค้า 2",
    image: "assets/images/img_1.png",
    descliption: "รายละเอียด 2",
    productcode: 00002,
    price: 110,
  ),
  Product(
    title: "ชื่อสินค้า 3",
    image: "assets/images/img_1.png",
    descliption: "รายละเอียด 3",
    productcode: 00003,
    price: 120,
  ),
  Product(
    title: "ชื่อสินค้า 4",
    image: "assets/images/img_1.png",
    descliption: "รายละเอียด 4",
    productcode: 00004,
    price: 140,
  ),
  Product(
    title: "ชื่อสินค้า 5",
    image: "assets/images/img_1.png",
    descliption: "รายละเอียด 5",
    productcode: 00005,
    price: 150,
  ),
];
