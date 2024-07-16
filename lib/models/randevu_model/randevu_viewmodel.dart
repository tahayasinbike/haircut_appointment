import 'package:flutter/material.dart';
import 'package:haircut_appointment/views/randevu_view.dart';
import 'package:mobx/mobx.dart';
part 'randevu_viewmodel.g.dart';

class RandevuViewModel = _RandevuViewModelBase with _$RandevuViewModel;

abstract class _RandevuViewModelBase with Store {
  @action
  void goToRandevuPage(BuildContext context, String imageName, String name) {
    Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => RandevuView(
            imageName: imageName,
            name: name,
          ),
        ));
  }
}
