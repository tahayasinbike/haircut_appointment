import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:haircut_appointment/constants/colors.dart';
import 'package:haircut_appointment/models/home_model/carousel_home_viewmodel.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class CustomCarousel {
  final HomeCarousel vm = HomeCarousel();
  List<Map<String, dynamic>> hizmetler = [
    {"hizmet": "agda", "name": "AĞDA"},
    {"hizmet": "kas", "name": "KAŞ TASARIMI"},
    {"hizmet": "boya", "name": "SAÇ RENKLENDİRME BOYAMA"},
    {"hizmet": "ciltbakim", "name": "MEDİKAL CİLT BAKIMI"},
    {"hizmet": "cocuk", "name": "ÇOCUK TRAŞI"},
    {"hizmet": "damat", "name": "DAMAT TRAŞI"},
    {"hizmet": "keratin", "name": "SAÇ KERATİN BAKIMI"},
    {"hizmet": "manikur", "name": "MANİKÜR PEDİKÜR EL AYAK BAKIMI"},
    {"hizmet": "masage", "name": "MASAJ"},
    {"hizmet": "modern", "name": "MODERN SAÇ SAKAL MODEL TASARIMI"},
    {"hizmet": "perma", "name": "PERMA"},
    {"hizmet": "solaryum", "name": "SOLARYUM"},
  ];

  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return SliverToBoxAdapter(
      child: SizedBox(
        height: 250,
        child: Stack(
          children: [
            if (hizmetler.isNotEmpty)
              CarouselSlider.builder(
                carouselController: vm.controller,
                itemCount: hizmetler.length,
                itemBuilder: (context, index, realIndex) {
                  return InkWell(
                    onTap: () {
                      showDialog(
                        useSafeArea: true,
                        context: context,
                        builder: (context) {
                          return GestureDetector(
                            onTap: () {
                              Navigator.pop(context);
                            },
                            child: InteractiveViewer(
                                maxScale: 5.0,
                                child: Image.asset(
                                    "assets/hizmet/${hizmetler[index]["hizmet"]}.jpg")),
                          );
                        },
                      );
                    },
                    child: Column(
                      children: [
                        Expanded(
                          flex: 8,
                          child: Container(
                            width: screenWidth / 1.5,
                            margin: const EdgeInsets.all(10),
                            decoration: BoxDecoration(
                              boxShadow: const [
                                BoxShadow(
                                  blurRadius: 6,
                                  offset: Offset(0, 1),
                                  spreadRadius: 1,
                                ),
                              ],
                              border: Border.all(color: Colors.white, width: 1),
                              color: Colors.red,
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child: ClipRRect(
                                borderRadius: BorderRadius.circular(15),
                                child: Image.asset(
                                  "assets/hizmet/${hizmetler[index]["hizmet"]}.jpg",
                                  fit: BoxFit.cover,
                                )),
                          ),
                        ),
                        Expanded(
                          flex: 1,
                          child: FittedBox(
                            child: Text(
                              hizmetler[index]["name"],
                              style: CustomColors.hizmetStyle,
                            ),
                          ),
                        ),
                      ],
                    ),
                  );
                },
                options: CarouselOptions(
                  enlargeFactor: 0.5,
                  initialPage: 0,
                  onPageChanged: (index, reason) => vm.activeIndex = index,
                  autoPlay: true,
                  autoPlayAnimationDuration: const Duration(seconds: 1),
                  enlargeStrategy: CenterPageEnlargeStrategy.zoom,
                  enlargeCenterPage: true,
                  viewportFraction: 0.6,
                  height: 250,
                ),
              ),
            if (hizmetler.isNotEmpty)
              Align(
                alignment: Alignment.centerRight,
                child: IconButton(
                  onPressed: ileri,
                  icon: const Icon(
                    Icons.arrow_forward_ios,
                    color: Colors.white,
                  ),
                ),
              ),
            if (hizmetler.isNotEmpty)
              Align(
                alignment: Alignment.centerLeft,
                child: IconButton(
                  onPressed: geri,
                  icon: const Icon(
                    Icons.arrow_back_ios,
                    color: Colors.white,
                  ),
                ),
              ),
          ],
        ),
      ),
    );
  }

  Widget buildIndicator() => AnimatedSmoothIndicator(
        effect: CustomizableEffect(
          spacing: 3,
          dotDecoration: DotDecoration(
            width: 15,
            dotBorder: const DotBorder(color: Colors.red),
            borderRadius: BorderRadius.circular(10),
            color: Colors.white,
          ),
          activeDotDecoration: DotDecoration(
            width: 10,
            borderRadius: BorderRadius.circular(10),
            color: const Color(0xffB70404),
          ),
        ),
        activeIndex: vm.activeIndex,
        count: hizmetler.isNotEmpty ? hizmetler.length : 0,
      );

  void ileri() => vm.next();
  void geri() => vm.back();
}
