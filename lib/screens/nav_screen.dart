import 'package:flutter/material.dart';
import 'package:googledriveclone/Widgets/header.dart';
import 'package:googledriveclone/screens/storage_screen.dart';

class NavScreen extends StatelessWidget {
  const NavScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(25),
        child: AppBar(
          elevation: 0.0,
          backgroundColor: Colors.white,
        ),
      ),
      body: const Column(
        children: [
          Header(),
          StorageScreen(),
        ],
      ),
    );
  }
}
