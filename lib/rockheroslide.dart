import 'package:flutter/material.dart';


class CarouselItem{
  final String bgImg;
  final String title;
  final String description;



  CarouselItem({
    @required this.bgImg,
    @required this.title,
    @required this.description,

  });

}

final carouselItemList= [
   CarouselItem(bgImg: 'assets/images/food.jpg', title: 'All your favorites.' , description: 'Order from the best local restaurants with easy, on-demand delivery',),
  CarouselItem(bgImg: 'assets/images/human.jpg', title: 'Free delivery offers' , description:  'Free delivery for new customers via Apple Pay and others payment methods.',),
  CarouselItem(bgImg: 'assets/images/meter.jpg', title: 'Easy Payment', description:  'Easily pay for your orders in a convenient way. We take both cash and card.',),

];