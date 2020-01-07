import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:marquee/marquee.dart';
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
          color: Color(0xffa62627),
          child:Marquee(text: 'Some sample text that takes some space.',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.white,
              fontSize: 30.0,
            ),
            scrollAxis: Axis.horizontal,
            crossAxisAlignment: CrossAxisAlignment.start,

            blankSpace: 20.0,
            velocity: 100.0,
            pauseAfterRound: Duration(seconds: 1),
            startPadding: 10.0,
            accelerationDuration: Duration(seconds: 1),
            accelerationCurve: Curves.linear,
            decelerationDuration: Duration(milliseconds: 500),
            decelerationCurve: Curves.easeOut,
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
