class PositionModel{


  String? market;
  String? qty;
  String? value;
  String? price;
  String? unrealized;
  bool? isSell;

  PositionModel(
      {this.market,
      this.qty,
      this.value,
      this.price,
      this.unrealized,
      this.isSell});
}