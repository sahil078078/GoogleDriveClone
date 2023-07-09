import 'package:flutter/material.dart';
import 'package:googledriveclone/Widgets/storage_container.dart';
import 'package:googledriveclone/Widgets/upload_options.dart';

class StorageScreen extends StatelessWidget {
  const StorageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Expanded(
      child: Column(
        children: [
          SizedBox(height: 40),
          StorageContainer(),
          Spacer(),
          Padding(
            padding: EdgeInsets.only(bottom: 18),
            child: UploadOptions(),
          ),
        ],
      ),
    );
  }
}
