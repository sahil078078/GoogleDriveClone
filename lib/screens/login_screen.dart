import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:googledriveclone/Controllers/auth_controller.dart';
import 'package:googledriveclone/helper/color_const.dart';
import 'package:googledriveclone/helper/my_text_style.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final authController = Get.find<AuthController>();

  @override
  Widget build(BuildContext context) {
    final mq = MediaQuery.of(context);
    final size = mq.size;
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomLeft,
          colors: [
            Colors.deepPurpleAccent,
            Colors.purpleAccent,
          ],
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(top: mq.viewInsets.top + 56),
              child: Image(
                width: size.width * 0.7,
                height: size.width * 0.7,
                image: const AssetImage('assets/images/filemanager.png'),
                fit: BoxFit.cover,
              ),
            ),
            const Spacer(),
            Container(
              width: size.width,
              margin: const EdgeInsets.only(
                right: 30,
                left: 30,
                top: 30,
                bottom: 35,
              ),
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(
                  Radius.circular(45),
                ),
                boxShadow: [
                  BoxShadow(
                    color: Colors.white,
                    spreadRadius: 5,
                    blurRadius: 1,
                  ),
                ],
              ),
              padding: const EdgeInsets.only(top: 25, bottom: 25),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Text(
                      'Simplify Your',
                      style: MyTextStyle.semiBold.copyWith(
                        fontSize: 25,
                        color: const Color(0xff635cb9),
                      ),
                    ),
                    Text(
                      'Filing system',
                      style: MyTextStyle.medium.copyWith(
                        fontSize: 20,
                        color: const Color(0xff635cb9),
                      ),
                    ),
                    const SizedBox(height: 20),
                    Text(
                      'Keep your file',
                      style: MyTextStyle.semiBold.copyWith(
                        fontSize: 20,
                        color: textColor,
                      ),
                    ),
                    Text(
                      'Organized more easily',
                      style: MyTextStyle.medium.copyWith(
                        fontSize: 20,
                        color: textColor,
                      ),
                    ),
                    const SizedBox(height: 30),
                    InkWell(
                      onTap: () => authController.login(),
                      child: Container(
                        height: 50,
                        width: size.width / 1.7,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.deepOrangeAccent.withOpacity(0.8),
                        ),
                        child: Center(
                          child: Text(
                            "Let's Go",
                            style: MyTextStyle.bold.copyWith(
                              color: Colors.white,
                              fontSize: 23,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
