import 'package:flutter/material.dart';
import 'package:googledriveclone/helper/color_const.dart';
import 'package:googledriveclone/helper/my_text_style.dart';

class StorageContainer extends StatelessWidget {
  const StorageContainer({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      width: size.width,
      margin: const EdgeInsets.only(left: 15, right: 15),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.grey.shade100,
        boxShadow: <BoxShadow>[
          BoxShadow(
            color: Colors.grey.withOpacity(0.001),
            offset: const Offset(10, 10),
            blurRadius: 10,
          ),
          BoxShadow(
            color: Colors.grey.withOpacity(0.001),
            offset: const Offset(-10, 10),
            blurRadius: 10,
          ),
        ],
      ),
      padding: const EdgeInsets.only(
        top: 25,
        bottom: 35,
      ),
      child: Column(
        children: [
          Container(
            width: 150,
            height: 150,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.white,
              boxShadow: <BoxShadow>[
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  blurRadius: 10,
                ),
              ],
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text.rich(
                  TextSpan(
                    children: <InlineSpan>[
                      TextSpan(
                        text: "20",
                        style: MyTextStyle.bold.copyWith(
                          fontSize: 50,
                          color: const Color(0xff635c98),
                        ),
                      ),
                      TextSpan(
                        text: "%",
                        style: MyTextStyle.bold.copyWith(
                          fontSize: 17,
                          color: const Color(0xff635c98),
                        ),
                      ),
                    ],
                  ),
                ),
                Text(
                  "Used",
                  style: MyTextStyle.bold.copyWith(
                    fontSize: 20,
                    color: textColor.withOpacity(0.7),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              usedElement(
                color: Colors.deepOrange,
                title: "Used",
                value: "50GB",
              ),
              usedElement(
                color: Colors.grey.withOpacity(0.25),
                title: "Free",
                value: "500GB",
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget usedElement({
    required Color color,
    required String title,
    required String value,
  }) {
    return Row(
      children: [
        Row(
          children: [
            Container(
              height: 18,
              width: 18,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                color: color,
              ),
            ),
          ],
        ),
        const SizedBox(width: 15),
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              title,
              style: MyTextStyle.semiBold.copyWith(
                fontSize: 18,
                color: textColor.withOpacity(0.7),
              ),
            ),
            Text(
              value,
              style: MyTextStyle.semiBold.copyWith(
                fontSize: 20,
                color: const Color(0xff635c9b),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
