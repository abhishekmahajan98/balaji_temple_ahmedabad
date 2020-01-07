import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import 'home_carousel_images.dart';

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildListDelegate([
        Container(
          height: MediaQuery.of(context).size.height / 10,
          width: MediaQuery.of(context).size.width,
          alignment: Alignment.center,
          color: Colors.black,
          child: Text(
            'Recent Info',
            style: TextStyle(
              color: Colors.white,
              fontSize: 20,
            ),
          ),
        ),
        SizedBox(
          height: 5,
        ),
        CarouselSlider.builder(
          enlargeCenterPage: true,
          enableInfiniteScroll: true,
          autoPlay: true,
          autoPlayInterval: Duration(seconds: 3),
          itemCount: homeCarouselImages.length,
          itemBuilder: (BuildContext context, int itemIndex) => Container(
            height: 200,
            child: Image.asset(
              homeCarouselImages[itemIndex],
              fit: BoxFit.cover,
            ),
          ),
        ),
        Card(
          child: Column(
            children: <Widget>[
              Material(
                color: Color(0xffa62627),
                child: ListTile(
                  title: Center(
                    child: Text(
                      'Next Main Event',
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                ),
              ),
              Container(
                child: Image.asset('assets/images/balaji4.jpg'),
              )
            ],
          ),
        ),
      ]),
    );
  }
}
