class BasketOrderModel {
  final int? id;
  final String name;
  final String imagePath;
  final int numOfOrder;
  final int totalPrice;

  BasketOrderModel({
    this.id,
    required this.name,
    required this.imagePath,
    required this.numOfOrder,
    required this.totalPrice,
  });

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'imagePath': imagePath,
      'numOfOrder': numOfOrder,
      'totalPrice': totalPrice
    };
  }

  factory BasketOrderModel.fromJson(Map<String, dynamic> map) {
    return BasketOrderModel(
      id: map['id'],
      name: map['name'],
      imagePath: map['imagePath'],
      numOfOrder: map['numOfOrder'],
      totalPrice: map['totalPrice'],
    );
  }
}
