import 'package:flutter/material.dart';
import 'package:haircut_appointment/constants/colors.dart';
import 'package:haircut_appointment/widgets/home_widget/appbar_widget.dart';
import 'package:haircut_appointment/widgets/home_widget/drawer_items_widget.dart';
import 'package:haircut_appointment/widgets/home_widget/silver_sizedbox_widget.dart';

Widget get drawer {
  return Builder(builder: (context) {
    return Drawer(
      backgroundColor: CustomColors.drawerColor,
      child: CustomScrollView(
        physics: const CustomScrollPhysics(scrollSpeed: 0.5),
        slivers: <Widget>[
          drawerSilver,
          emptyBox(40),
          drawerItem("main", "ANA SAYFA", context),
          drawerItem("info", "HAKKIMZDA", context),
          drawerItem("team", "EKİBİMİZ", context),
          drawerItem("cutter", "NELER YAPARIZ", context),
          drawerItem("chat", "YORUMLARIMIZ", context),
          drawerItem("kep", "AKADEMİ", context),
          drawerItem("hand", "FRANCHISING", context),
          drawerItem("contact", "İLETİŞİM", context),
          drawerItem("sign", "EKİP ÜYESİ GİRİŞ", context)
        ],
      ),
    );
  });
}
