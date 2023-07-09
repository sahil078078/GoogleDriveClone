import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:googledriveclone/helper/color_const.dart';
import 'package:googledriveclone/helper/my_text_style.dart';

import '../Controllers/navigation_controller.dart';

class Header extends StatelessWidget {
  const Header({super.key});

  Widget tabCell(Size size, String text, bool isSelected) => isSelected
      ? Container(
          padding: const EdgeInsets.all(5),
          width: size.width * 0.45 - 5,
          height: 60,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Colors.deepOrangeAccent,
            boxShadow: <BoxShadow>[
              BoxShadow(
                color: Colors.black.withOpacity(0.05),
                offset: const Offset(10, 10),
                blurRadius: 10,
              ),
              BoxShadow(
                color: Colors.black.withOpacity(0.05),
                offset: const Offset(-10, 10),
                blurRadius: 10,
              ),
            ],
          ),
          child: Center(
            child: Text(
              text,
              style: MyTextStyle.bold.copyWith(
                color: Colors.white,
                fontSize: 23,
              ),
              textAlign: TextAlign.center,
            ),
          ),
        )
      : SizedBox(
          width: size.width * 0.45 - 5,
          height: 60,
          child: Center(
            child: Text(
              text,
              style: MyTextStyle.bold.copyWith(
                color: textColor,
                fontSize: 23,
              ),
              textAlign: TextAlign.center,
            ),
          ),
        );
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      alignment: Alignment.center,
      child: Column(
        children: [
          Text(
            'F-Drive',
            style: MyTextStyle.bold.copyWith(
              fontSize: 28,
              color: textColor,
            ),
          ),
          const SizedBox(height: 20),
          Container(
            height: 60,
            width: size.width,
            margin: const EdgeInsets.only(left: 20, right: 20),
            decoration: BoxDecoration(
              color: Colors.grey.shade100,
              boxShadow: <BoxShadow>[
                BoxShadow(
                  color: Colors.black.withOpacity(0.03),
                  offset: const Offset(10, 10),
                  blurRadius: 10,
                ),
                BoxShadow(
                  color: Colors.black.withOpacity(0.03),
                  offset: const Offset(-10, 10),
                  blurRadius: 10,
                ),
              ],
            ),
            child: GetX(
              init: Get.find<NavigationController>(),
              builder: (controller) {
                return Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
                      onTap: () => controller.changeTab("Storage"),
                      child: tabCell(
                        size,
                        controller.tab.value,
                        controller.tab.value == "Storage",
                      ),
                    ),
                    InkWell(
                      onTap: () => controller.changeTab("Files"),
                      child: tabCell(
                        size,
                        controller.tab.value,
                        controller.tab.value == "Files",
                      ),
                    ),
                  ],
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
