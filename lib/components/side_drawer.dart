import 'package:flutter/material.dart';


class SideDrawer extends StatelessWidget {
  Widget infoText(String txt)
  {
    return Text(
      txt,
      style: TextStyle(
          color: Colors.white,
            fontSize: 20.0,
      ),
  );
  }
  Widget divider()
  {
    return Divider(
      height: 10,
     color: Colors.black,
     );
  }
  @override
  Widget build(BuildContext context) {
    return Drawer(
      
      child: Container(
        decoration: BoxDecoration(
          color:  Color(0xffa62627),
        ),
        child: ListView(
          reverse: true,
          children: <Widget>[
          InkWell(
            child:
              ListTile(
              title:  infoText('Trustees/Managing Trustees'),
              ),    
            ),
            divider(),
            InkWell(
              child: 
              ListTile(
                  title: infoText('Awards and Appreciations'),
              ),
            ),
            divider(), 
            InkWell(
              child: 
                ListTile(
                  title:infoText('Upcoming Projects'),
                  ),
                ) ,   
             divider(),   
            InkWell(
              child: 
                ListTile(
                    title: infoText('Facilites at Temple'),
                  ),
                ),
             divider(),   
            InkWell(
              child: 
                ListTile(
                  title: infoText('Festivals celebrated at The Temple') ,
                ),
            ),
            divider(),
            InkWell(
              child: ListTile(
                title:infoText('DHARMAKARTHAS WORDS'),
               ),
            ),
            divider(),
            InkWell(
              child: ListTile(
                title:infoText('SOCIAL SERVICE UNIT'),
              ),
            ),
            divider(),
            InkWell(
              child: ListTile(
                title:infoText('PRIEST'),
              ),
            ),
            divider(),
          ],
        ),
      ),
      
    );
  }
}