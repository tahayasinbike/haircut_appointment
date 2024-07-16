import 'package:flutter/material.dart';

Widget emptyBox(double height) {
  return SliverToBoxAdapter(
    child: SizedBox(
      height: height,
    ),
  );
}
