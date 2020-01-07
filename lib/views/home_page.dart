import 'package:balaji_temple_ahmedabad/components/about_page.dart';
import 'package:balaji_temple_ahmedabad/components/darshan_time_page.dart';
import 'package:balaji_temple_ahmedabad/components/eseva_page.dart';
import 'package:balaji_temple_ahmedabad/components/main_page.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;
  final List<String> _pageTitles = [
    'Home',
    'About',
    'Darshan',
    'E-seva',
  ];
  final List<Widget> _pages = [
    MainPage(),
    AboutPage(),
    DarshanTimePage(),
    EsevaPage(),
  ];
  BottomNavigationBarItem _buildNavigationItem(
      int index, IconData iconData, String text) {
    return BottomNavigationBarItem(
      icon: Icon(iconData, color: Colors.black),
      activeIcon: Icon(
        iconData,
        color: Color(0xffa62627),
      ),
      title: Text(
        text,
        style: TextStyle(
          color: _selectedIndex == index ? Color(0xffa62627) : Colors.black,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            expandedHeight: 200,
            floating: false,
            pinned: true,
            backgroundColor: Color(0xffa62627),
            flexibleSpace: FlexibleSpaceBar(
              background: Image.asset(
                'assets/images/sunrays.jpg',
                fit: BoxFit.cover,
              ),
              title: Text(
                'Balaji Temple,Ahmedabad',
                style: TextStyle(color: Colors.black),
              ),
              centerTitle: true,
            ),
          ),
          _pages[_selectedIndex],
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        onTap: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
        currentIndex: _selectedIndex,
        type: BottomNavigationBarType.fixed,
        items: <BottomNavigationBarItem>[
          _buildNavigationItem(0, Icons.home, _pageTitles[0]),
          _buildNavigationItem(1, Icons.info, _pageTitles[1]),
          _buildNavigationItem(2, FontAwesomeIcons.eye, _pageTitles[2]),
          _buildNavigationItem(3, Icons.bookmark, _pageTitles[3]),
        ],
      ),
    );
  }
}
