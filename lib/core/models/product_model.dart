class ProductModel {
  int id;
  String name;
  String info;
  double price;
  double oldPrice;
  double discount;
  double rate;
  int countRates;
  ProductModel({
    required this.id,
    required this.name,
    required this.info,
    required this.price,
    required this.oldPrice,
    required this.discount,
    required this.rate,
    required this.countRates,
  });
}
