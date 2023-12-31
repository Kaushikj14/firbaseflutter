import 'package:firebase_auth/firebase_auth.dart';

class AuthService {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  // sign in with email and password

  // registerwith email and password

  // sign out

  // sigin anonymous
  Future signInAnon() async {
    try {
      UserCredential result = await _auth.signInAnonymously();
      User? user = result.user;

      return user;
    } catch (e) {
      print(e.toString());
      return null;
    }
  }
}
