import 'package:carousel_slider/carousel_slider.dart';
import 'package:mobx/mobx.dart';
part 'carousel_home_viewmodel.g.dart';

class HomeCarousel = _HomeCarouselBase with _$HomeCarousel;

abstract class _HomeCarouselBase with Store {
  @observable
  int activeIndex = 0;
  @observable
  var controller = CarouselController();
  @action
  void next() => controller.nextPage();
  @action
  void back() => controller.previousPage();
}
