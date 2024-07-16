import 'package:flutter/material.dart';
import 'package:haircut_appointment/constants/colors.dart';
import 'package:haircut_appointment/models/randevu_model/randevu_viewmodel.dart';

final RandevuViewModel rvm = RandevuViewModel();

Widget kuafor(String name, String imageName, BuildContext context) {
  return SliverToBoxAdapter(
    child: Builder(builder: (context) {
      return ListTile(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            InkWell(
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
              child: CircleAvatar(
                radius: 30,
                backgroundImage: AssetImage(
                  "assets/$imageName.png",
                ),
              ),
            ),
            Text(name),
            const SizedBox(
              width: 50,
            ),
            TextButton(
                onPressed: () => rvm.goToRandevuPage(context, imageName, name),
                child: const Text(
                  "Randevu \n Saatleri",
                  style: TextStyle(color: CustomColors.mintGreen),
                ))
          ],
        ),
      );
    }),
  );
}
