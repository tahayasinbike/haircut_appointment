// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'carousel_home_viewmodel.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$HomeCarousel on _HomeCarouselBase, Store {
  late final _$activeIndexAtom =
      Atom(name: '_HomeCarouselBase.activeIndex', context: context);

  @override
  int get activeIndex {
    _$activeIndexAtom.reportRead();
    return super.activeIndex;
  }

  @override
  set activeIndex(int value) {
    _$activeIndexAtom.reportWrite(value, super.activeIndex, () {
      super.activeIndex = value;
    });
  }

  late final _$controllerAtom =
      Atom(name: '_HomeCarouselBase.controller', context: context);

  @override
  CarouselController get controller {
    _$controllerAtom.reportRead();
    return super.controller;
  }

  @override
  set controller(CarouselController value) {
    _$controllerAtom.reportWrite(value, super.controller, () {
      super.controller = value;
    });
  }

  late final _$_HomeCarouselBaseActionController =
      ActionController(name: '_HomeCarouselBase', context: context);

  @override
  void next() {
    final _$actionInfo = _$_HomeCarouselBaseActionController.startAction(
        name: '_HomeCarouselBase.next');
    try {
      return super.next();
    } finally {
      _$_HomeCarouselBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void back() {
    final _$actionInfo = _$_HomeCarouselBaseActionController.startAction(
        name: '_HomeCarouselBase.back');
    try {
      return super.back();
    } finally {
      _$_HomeCarouselBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
activeIndex: ${activeIndex},
controller: ${controller}
    ''';
  }
}
