class PurcheseModel {
  String? id;
  String? productId;
  String? purcheseDate;
  num purchesePrice;
  num quantity;

  PurcheseModel(
      {this.id,
      this.productId,
      this.purcheseDate,
      required this.purchesePrice,
      required this.quantity});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'productId': productId,
      'purcheseDate': purcheseDate,
      'purchesePrice': purchesePrice,
      'quantity': quantity,
    };
  }

  factory PurcheseModel.fromMap(Map<String, dynamic> map) => PurcheseModel(
        id: map['id'],
        productId: map['productId'],
        purcheseDate: map['purcheseDate'],
        purchesePrice: map['purchesePrice'],
        quantity: map['quantity'],
      );
}
