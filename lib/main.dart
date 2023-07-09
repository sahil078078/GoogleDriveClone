import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:googledriveclone/Controllers/auth_controller.dart';
import 'package:googledriveclone/screens/nav_screen.dart';

import 'helper/init_controller .dart';
import 'screens/login_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      initialBinding: InitController(),
      title: 'Google Drive',
      theme: ThemeData(
        fontFamily: 'Montserrat',
      ),
      home: const Root(),
    );
  }
}

class Root extends StatelessWidget {
  const Root({super.key});

  @override
  Widget build(BuildContext context) {
    return GetX(
      init: Get.find<AuthController>(),
      builder: (controller) {
        return controller.user.value != null
            ? const NavScreen()
            : const LoginScreen();
      },
    );
  }
}
