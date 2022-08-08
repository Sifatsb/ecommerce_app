class ProductModel {
  String? id;
  String? name;
  String? category;
  String? description;
  num salePrice;
  bool featured;
  bool available;
  String? imageUrl;

  ProductModel(
      {this.id,
      this.name,
      this.category,
      this.description,
      required this.salePrice,
      this.featured = true,
      this.available = true,
      this.imageUrl});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'name': name,
      'category': category,
      'description': description,
      'salePrice': salePrice,
      'featured': featured,
      'available': available,
      'imageUrl': imageUrl,
    };
  }

  factory ProductModel.fromMap(Map<String, dynamic> map) => ProductModel(
        id: map['id'],
        name: map['name'],
        category: map['category'],
        description: map['description'],
        salePrice: map['salePrice'],
        featured: map['featured'],
        available: map['available'],
        imageUrl: map['imageUrl'],
      );
}
