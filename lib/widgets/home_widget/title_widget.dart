import 'package:flutter/material.dart';

Widget titleWidget(String titleName) {
  return Builder(builder: (context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return SliverToBoxAdapter(
      child: Padding(
        padding: EdgeInsets.only(
            left: screenWidth / 20,
            right: screenWidth / 20,
            top: screenHeight / 30),
        child: Column(
          children: [
            Text(
              titleName,
              style: const TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.w400,
              ),
            ),
            const Divider()
          ],
        ),
      ),
    );
  });
}
