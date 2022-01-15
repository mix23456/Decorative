class Customer {
  final String name, company, address, email;
  final int taxpayernumber;

  Customer({
    required this.name,
    required this.company,
    required this.address,
    required this.email,
    required this.taxpayernumber,
  });
}

List<Customer> customers = [
  Customer(
    name: 'a',
    company: 'ไท',
    address: '12/3 ถนนระแกง',
    email: '123@gmail.com',
    taxpayernumber: 3101908008,
  ),
  Customer(
    name: 'b',
    company: 'ไท',
    address: '12/3 ถนนระแกง',
    email: '123@gmail.com',
    taxpayernumber: 3101908008,
  ),
  Customer(
    name: 'c',
    company: 'ไท',
    address: '12/3 ถนนระแกง',
    email: '123@gmail.com',
    taxpayernumber: 3101908008,
  ),
];
