import 'package:balaji_temple_ahmedabad/components/home_carousel_images.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

import 'long_texts.dart';

class AboutPage extends StatefulWidget {
  @override
  _AboutPageState createState() => _AboutPageState();
}

class _AboutPageState extends State<AboutPage> {
  var top = 0.0;
  _launchFacebookURL() async {
    const url = "https://www.facebook.com/balajitemple.org/";
    launch(url);
  }
  _launchYoutubeURL() async {
    const url = "https://www.youtube.com/watch?v=JqAf-F2iD0c";
    launch(url);
  }
  _launchWebsiteURL() async {
    const url = "https://balajitemple.org/";
    launch(url);
  }
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: <Widget>[
        SliverAppBar(
          expandedHeight: MediaQuery.of(context).size.height / 5,
          floating: false,
          pinned: true,
          backgroundColor: Color(0xffa62627),
          flexibleSpace: LayoutBuilder(
            builder: (BuildContext context, BoxConstraints constraints) {
              top = constraints.biggest.height;
              return FlexibleSpaceBar(
                background: Image.asset(
                  'assets/images/sunrays.jpg',
                  fit: BoxFit.cover,
                ),
                title: top > 80
                    ? Container(
                        width: MediaQuery.of(context).size.width / 2,
                        child: Image.asset(
                          'assets/images/logo/logo.png',
                          fit: BoxFit.cover,
                        ),
                      )
                    : Text('Balaji Temple,Ahmedabad'),
                centerTitle: true,
              );
            },
          ),
        ),
    SliverList(

      delegate: SliverChildListDelegate([
      Container(
        decoration: BoxDecoration(
        color: Color(0XFFf6d97d),
        ),
        child: Column(
         children: <Widget>[
         CarouselSlider.builder(
          enlargeCenterPage: true,
          enableInfiniteScroll: true,
          autoPlay: true,
          autoPlayInterval: Duration(seconds: 3),
          itemCount:  aboutCarouselImages.length,
           itemBuilder: (BuildContext context, int itemIndex) => Container(
             height: 200,
             child: Image.asset(
              aboutCarouselImages[itemIndex],
              fit: BoxFit.cover,
             ),
           ),
         ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Card(
               child: aboutText,
            ),
          ),
          Container(),
          Container(
            height: 500,
            width: double.infinity,
            decoration: BoxDecoration(
              color: Color(0xffa62627),
            ),
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text('Follow Us:',
                     style: TextStyle(
                      color: Colors.white,
                      fontSize: 30.0,
                     ),
                  ),
                Padding(
                  padding: const EdgeInsets.only(top: 20,right: 20),
                  child: Row(
                    children: <Widget>[
                      GestureDetector(
                        onTap:(){
                          _launchFacebookURL();
                        },
                        child: Icon(
                          FontAwesomeIcons.facebook,
                          color: Colors.white,
                          size: 60,
                        ),
                      ),
                      SizedBox(width: 20,),
                      GestureDetector(
                        onTap: (){
                          _launchYoutubeURL();
                        },
                        child: Icon(
                          FontAwesomeIcons.youtube,
                          color: Colors.white,
                          size: 60,
                        ),
                      ),
                      SizedBox(width: 20.0,),
                      GestureDetector(
                        onTap: (){
                          _launchWebsiteURL();
                        },
                        child: Icon(
                          FontAwesomeIcons.globe,
                          color: Colors.white,
                          size: 60,
                        ),
                      ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Text('Contact Us:',
                    style: TextStyle(
                    color: Color(0xffa62627),
                    fontSize: 30.0,
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                   Expanded(
                   flex:2,
                     child: Text('Address: ',
                     style: TextStyle(
                      color: Colors.white,
                       fontSize: 20.0,
                      ),
                    ),
                  ),
                   Expanded(
                   flex: 5,
                     child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                      Text('Opp. Nirma University,',
                        style: TextStyle(
                        color: Colors.white,
                         fontSize: 15.0,
                       ),
                      ),

                      Text(' S.G.Highway, Chharodi,',
                       style: TextStyle(
                       color: Colors.white,
                       fontSize: 15.0,
                       ),
                      ),
                      Text('Ahmedabad – 382 481,',
                       style: TextStyle(
                       color: Colors.white,
                       fontSize: 15.0,
                       ),
                      ),
                      Text('India,',
                        style: TextStyle(
                        color: Colors.white,
                        fontSize: 15.0,
                       ),
                      ),
                      ],
                      ),
                      ),


                    ],
                  ),
        SizedBox(
        height: 20,
        ),
        Row(
        children: <Widget>[
        Expanded(
        flex:2,
        child: Text('Phone: ',
        style: TextStyle(
        color: Colors.white,
        fontSize: 20,
        ),),
        ),
        Expanded(
        flex: 5,
        child: Text('+91-7405060867/865',
        style: TextStyle(
        color: Colors.white,
        fontSize: 15,
        ),),
        )
        ],
        ),
        SizedBox(
        height: 20,
        ),
        Row(
        children: <Widget>[
        Expanded(
        flex:2,
        child: Text('Email: ',
        style: TextStyle(
        color: Colors.white,
        fontSize: 20,
        ),),
        ),
        Expanded(
        flex: 5,
        child: Text('balajitemple.amd@gmail.com',
        style: TextStyle(
        color: Colors.white,
        fontSize: 15,
        ),),
        )
        ],
        ),

        ],
        ),
        ),

        ),

        ],
        ),
      ),

      ]),
      ),
      ],
    );
  }
}
