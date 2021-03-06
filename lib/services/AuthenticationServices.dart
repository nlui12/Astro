import 'package:firebase_auth/firebase_auth.dart';

class AuthService {
  final FirebaseAuth _auth = FirebaseAuth.instance;

  Stream<User> get user {
    return _auth.authStateChanges();
  }

  // sign in with email and password
  Future signInWithEmailAndPassword(String email, String password) async {
    try {
      UserCredential result = await _auth.signInWithEmailAndPassword(
          email: email, password: password);
      User firebaseUser = result.user;
      return firebaseUser;
    } catch (error) {
      print(error.toString());
      return null;
    }
  }

  // register with email and password
  Future registerWithEmailAndPassword(String email, String password) async {
    try {
      UserCredential result = await _auth.createUserWithEmailAndPassword(
          email: email, password: password);
      User firebaseUser = result.user;
      //
      return firebaseUser;
      // create a new document for the user with the uid
    } catch (error) {
      print(error.toString());
      return null;
    }
  }

  // update user profile
  Future updateUserProfile(String displayName, String photoURL) async {
    try {
      User firebaseUser = _auth.currentUser;
      firebaseUser.updateProfile(
        displayName: displayName,
        photoURL: photoURL,
      );
      return firebaseUser;
    } catch (error) {
      print(error.toString());
      return null;
    }
  }

  // // sign out
  Future signOut() async {
    try {
      return await _auth.signOut();
    } catch (error) {
      print(error.toString());
      return null;
    }
  }
}
