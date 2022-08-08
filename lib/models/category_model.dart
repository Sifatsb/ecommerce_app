class CategoryModel {
  String? catId;
  String? catName;
  num productCount;
  bool available;

  CategoryModel({this.catId, this.catName, this.productCount = 0, this.available = true});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'catId': catId,
      'productCount': productCount,
      'catName': catName,
      'available': available,
    };
  }

  factory CategoryModel.fromMap(Map<String, dynamic> map) => CategoryModel(
        catId: map['catId'],
        catName: map['catName'],
        productCount: map['productCount'],
        available: map['available'],
      );
}
