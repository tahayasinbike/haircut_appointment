import 'package:flutter/material.dart';

Widget get sliverList {
  return SliverList(
      delegate: SliverChildBuilderDelegate((context, index) {
    return ListTile(
      title: Text("item #$index"),
    );
  }, childCount: 60));
}
