import 'package:flutter/material.dart';

class UploadOptions extends StatelessWidget {
  const UploadOptions({super.key});
  Widget colorsContainer({
    required Color bgColor,
    required Icon icon,
    required String option,
    required String title,
  }) {
    return Container(
      width: 50,
      height: 50,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: bgColor,
      ),
      child: Center(child: icon),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        colorsContainer(
          bgColor: Colors.lightBlue.withOpacity(0.2),
          icon: const Icon(Icons.image, color: Colors.cyan, size: 30),
          option: "image",
          title: "Image",
        ),
        colorsContainer(
          bgColor: Colors.pink.withOpacity(0.3),
          icon: Icon(
            Icons.play_arrow,
            color: Colors.pink.withOpacity(0.5),
            size: 30,
          ),
          option: "video",
          title: "Video",
        ),
        colorsContainer(
          bgColor: Colors.blue.withOpacity(0.4),
          icon: Icon(
            Icons.file_open,
            color: Colors.indigoAccent.withOpacity(0.5),
            size: 30,
          ),
          option: "application",
          title: "Documents",
        ),
        colorsContainer(
          bgColor: Colors.purple.withOpacity(0.2),
          icon: Icon(
            Icons.music_video,
            color: Colors.pink.withOpacity(0.3),
            size: 30,
          ),
          option: "image",
          title: "Image",
        ),
      ],
    );
  }
}
