import 'package:flutter/material.dart';
import 'package:haircut_appointment/constants/colors.dart';

PreferredSizeWidget get appbarWidget {
  return AppBar(
    backgroundColor: CustomColors.darkPurple,
    centerTitle: true,
    title: Builder(builder: (context) {
      double screenWidth = MediaQuery.of(context).size.width;
      return SizedBox(
        width: screenWidth / 2,
        child: Image.asset(
          "assets/maskumen_logo.png",
          fit: BoxFit.cover,
        ),
      );
    }),
  );
}

Widget get sliverAppbar {
  return Builder(builder: (context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return SliverAppBar(
      leading: IconButton(
          onPressed: () => Scaffold.of(context).openDrawer(),
          icon: const Icon(
            Icons.menu,
            color: CustomColors.white,
            size: 30,
          )),
      backgroundColor: CustomColors.drawerColor,
      expandedHeight: 200.0,
      floating: false,
      pinned: true,
      flexibleSpace: FlexibleSpaceBar(
        background: Image.asset(
          "assets/maskumen.jpeg",
          fit: BoxFit.cover,
        ),
        title: SizedBox(
          width: screenWidth / 2,
          child: Image.asset(
            "assets/maskumen_logo.png",
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  });
}

Widget get drawerSilver {
  return Builder(builder: (context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return SliverAppBar(
      automaticallyImplyLeading: false,
      backgroundColor: CustomColors.drawerColor,
      expandedHeight: 50.0,
      floating: false,
      pinned: true,
      flexibleSpace: FlexibleSpaceBar(
        /* background: Image.asset(
          "assets/maskumen.jpeg",
          fit: BoxFit.cover,
        ), */
        title: SizedBox(
          width: screenWidth / 2.4,
          child: Image.asset(
            "assets/maskumen_logo.png",
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  });
}

class CustomScrollPhysics extends ScrollPhysics {
  final double scrollSpeed;

  const CustomScrollPhysics({required this.scrollSpeed, super.parent});

  @override
  CustomScrollPhysics applyTo(ScrollPhysics? ancestor) {
    return CustomScrollPhysics(
        scrollSpeed: scrollSpeed, parent: buildParent(ancestor));
  }

  @override
  double applyPhysicsToUserOffset(ScrollMetrics position, double offset) {
    return offset * scrollSpeed;
  }
}
