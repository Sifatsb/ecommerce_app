import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:ecommerce_app/models/category_model.dart';
class DBHelper {
  static const String collectionAdmin = 'Admins';
  static const String collectionCategory = 'Categories';
  static FirebaseFirestore _db = FirebaseFirestore.instance;
  
  static Future<bool> isAdmin(String uid) async {
    final snapshot = await _db.collection(collectionAdmin).doc(uid).get();
    return snapshot.exists;
  }

  static Future<void> addCategory(CategoryModel categoryModel){
    final doc = _db.collection(collectionCategory).doc();
    categoryModel.catId = doc.id;
    return doc.set(categoryModel.toMap());
  }

  static Stream<QuerySnapshot<Map<String, dynamic>>> getAllCategories() =>
      _db.collection(collectionCategory).snapshots();


}