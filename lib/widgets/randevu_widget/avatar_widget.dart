import 'package:flutter/material.dart';
import 'package:haircut_appointment/constants/colors.dart';

Widget avatar(String imageName, String name) {
  return Builder(builder: (context) {
    return InkWell(
      onTap: () {
        showDialog(
          useSafeArea: true,
          context: context,
          builder: (context) {
            return GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: Center(
                child: InteractiveViewer(
                    maxScale: 5.0,
                    child: Image.asset(
                      "assets/$imageName.png",
                      fit: BoxFit.fill,
                    )),
              ),
            );
          },
        );
      },
      child: Center(
        child: Column(
          children: [
            Stack(alignment: Alignment.center, children: [
              CircleAvatar(
                radius: 100,
                backgroundImage: AssetImage(
                  "assets/$imageName.png",
                ),
              ),
              SizedBox(
                  // color: Colors.red,
                  height: 200,
                  width: 290,
                  child: Image.asset(
                    "assets/celenk.png",
                    fit: BoxFit.fitWidth,
                  ))
            ]),
            const SizedBox(
              height: 20,
            ),
            Text(
              name,
              style: CustomColors.hizmetStyle,
            )
          ],
        ),
      ),
    );
  });
}
