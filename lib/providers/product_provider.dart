import 'package:ecommerce_app/db/db_helper.dart';
import 'package:ecommerce_app/models/category_model.dart';
import 'package:flutter/cupertino.dart';

import '../models/product_model.dart';

class ProductProvider extends ChangeNotifier {
  List<ProductModel> productList = [];
  List<CategoryModel> categoryList = [];

  getAllCategories() {
    DBHelper.getAllCategories().listen((snapshot) {
      categoryList = List.generate(snapshot.docs.length,
          (index) => CategoryModel.fromMap(snapshot.docs[index].data()));
      notifyListeners();
    });
  }

  Future<void> addCategory(String category) {
    final categoryModel = CategoryModel(
      catName: category,
    );
    return DBHelper.addCategory(categoryModel);
  }

}