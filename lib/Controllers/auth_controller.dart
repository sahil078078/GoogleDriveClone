import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';
import 'package:get/get.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:googledriveclone/utils.dart';

class AuthController extends GetxController {
  // instance
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final GoogleSignIn googleSignIn = GoogleSignIn();
  final Rx<User?> user = Rx<User?>(FirebaseAuth.instance.currentUser);

  @override
  void onInit() {
    user.bindStream(_auth.authStateChanges());
    super.onInit();
  }

  login() async {
    final GoogleSignInAccount? googleUser = await googleSignIn.signIn();
    debugPrint("googleSignIn Email: ${googleUser?.email}");
    debugPrint("googleSignIn displayName : ${googleUser?.displayName}");
    debugPrint("googleSignIn photoUrl : ${googleUser?.photoUrl}");

    if (googleUser != null) {
      final GoogleSignInAuthentication googleAuth =
          await googleUser.authentication;
      AuthCredential credential = GoogleAuthProvider.credential(
        accessToken: googleAuth.accessToken,
        idToken: googleAuth.idToken,
      );

      UserCredential userCredential =
          await _auth.signInWithCredential(credential);

      User? user = userCredential.user!;
      userCollection.doc(user.uid).set(
        {
          "username": user.displayName,
          "profilePic": user.photoURL,
          "email": user.email,
          "uid": user.uid,
          "userCreated": DateTime.now().toIso8601String(),
        },
      );
    }
  }
}
