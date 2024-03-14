class OrderModel{

  String? price;
  String? volume;
  String? amount;
  bool? isSell;

  OrderModel({this.price, this.volume, this.amount, this.isSell});

  factory OrderModel.fromJson(dynamic json){
    return OrderModel(
      price: json["price"].toString(),
      volume: json["quantity"].toString(),
      amount: json["sum"].toString(),
    );
  }
}