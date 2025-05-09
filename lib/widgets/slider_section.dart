import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class SliderSection extends StatelessWidget {
  const SliderSection({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> sliders = [
      "https://api.upaybd.com/media/dynamic_image/Website-Banner-Desktop--1440x680_T2HYS9H.jpg",
      "https://api.upaybd.com/media/dynamic_image/UPAY_Web_Banner-Desk_1440x680_FREE-PREPAID_CARD_OFFER.png",
      "https://api.upaybd.com/media/dynamic_image/Send-Money---Website-Banner-Desktop--1440x680_HUg6b7j.jpg",
      "https://api.upaybd.com/media/dynamic_image/UPAY_Prepaid_Card_Offer__Website_Banner_1440X680.png",
    ];
    return CarouselSlider.builder(
      itemCount: sliders.length,
      itemBuilder: (context, itemIndex, pageIndex) {
        return Container(
          decoration: BoxDecoration(
            color: Colors.amber,
            borderRadius: BorderRadius.circular(12),
            image: DecorationImage(
              image: NetworkImage(sliders[itemIndex]),
              fit: BoxFit.cover,
            ),
          ),
        );
      },
      options: CarouselOptions(
        height: 150,
        autoPlay: true,
        autoPlayCurve: Curves.fastOutSlowIn,
        autoPlayInterval: Duration(seconds: 3),
        enlargeCenterPage: true,
        enlargeFactor: 0.2,
      ),
    );
  }
}
