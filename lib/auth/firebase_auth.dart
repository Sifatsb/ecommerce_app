import 'package:ecommerce_app/db/db_helper.dart';
import 'package:firebase_auth/firebase_auth.dart';

class AuthService {

  static final FirebaseAuth _auth = FirebaseAuth.instance;
  static User? user = _auth.currentUser;

  static Future<bool> login(String email, String password) async {
    final credential = await _auth.signInWithEmailAndPassword(email: email, password: password);

    return DBHelper.isAdmin(credential.user!.uid);
  }

  static Future<void> logout() => _auth.signOut();

}