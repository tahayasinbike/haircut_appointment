import 'package:flutter/material.dart';
import 'package:haircut_appointment/widgets/home_widget/appbar_widget.dart';
import 'package:haircut_appointment/widgets/home_widget/carousel_widget.dart';
import 'package:haircut_appointment/widgets/home_widget/drawer_widget.dart';
import 'package:haircut_appointment/widgets/home_widget/kuafor_widget.dart';
import 'package:haircut_appointment/widgets/home_widget/title_widget.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: drawer,
      // appBar: appbarWidget,
      body: CustomScrollView(
        physics: const CustomScrollPhysics(scrollSpeed: 0.5),
        slivers: <Widget>[
          sliverAppbar,
          titleWidget("Hizmetlerimiz"),
          CustomCarousel().build(context),
          titleWidget("Kuaför"),
          kuafor("İsmail Köybaşı", "ismail", context),
          kuafor("Ferhat Kerem", "ferhat", context),
          kuafor("İsmail Köybaşı", "ismail", context),
          kuafor("Ferhat Kerem", "ferhat", context),
          kuafor("İsmail Köybaşı", "ismail", context),
          kuafor("Ferhat Kerem", "ferhat", context),
          kuafor("İsmail Köybaşı", "ismail", context),
          kuafor("Ferhat Kerem", "ferhat", context),
          titleWidget("Güzellik Uzmanı"),
          kuafor("Gökmen Kaya", "gokmen", context),
          titleWidget("Estetik"),
          kuafor("Gamze Üresin", "gamze", context)
        ],
      ),
    );
  }
}
