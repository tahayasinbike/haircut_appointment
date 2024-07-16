import 'package:flutter/material.dart';
import 'package:haircut_appointment/constants/colors.dart';
import 'package:haircut_appointment/models/login_model/login_viewmodel.dart';

final LoginViewModel lvm = LoginViewModel();

Widget drawerItem(
  String name,
  String title,
  BuildContext context,
) {
  return SliverToBoxAdapter(
    child: InkWell(
      onTap: () => lvm.goToLoginPage(context),
      child: ListTile(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(width: 45, child: Image.asset("assets/logo/$name.png")),
            const SizedBox(
              width: 20,
            ),
            Text(
              title,
              style: CustomColors.drawerStyle,
              overflow: TextOverflow.ellipsis,
            ),

            /* const Divider(
              color: CustomColors.yellow,
            ) */
          ],
        ),
      ),
    ),
  );
}
