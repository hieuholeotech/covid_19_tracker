import 'package:covid_19/components/bottom_nav_bar.dart';
import 'package:covid_19/screens/profile/components/schedule.dart';
import 'package:covid_19/screens/profile/components/schedule_intro.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size sizeHeight = MediaQuery.of(context).size;
    Size sizeWidth = MediaQuery.of(context).size;

    final double topWidgetHeight = 200.0;
    final double avatarRadius = 50.0;
    return Scaffold(
      body: SingleChildScrollView(
        child: new Stack(
          children: <Widget>[
            new Column(
              children: <Widget>[
                new ClipRRect(
                  child: Image.asset(
                    "asset/profile-cover.png",
                    fit: BoxFit.cover,
                    height: topWidgetHeight,
                    width: sizeWidth.width,
                  ),
                ),
                new Container(
                  color: Colors.red,
                )
              ],
            ),
            new Positioned(
              child: new ClipRRect(
                borderRadius: BorderRadius.circular(50),
                child: Image.asset(
                  "asset/hiu.jpg",
                  width: 100,
                  height: 100,
                  fit: BoxFit.cover,
                ),
              ),
              left: (MediaQuery.of(context).size.width / 2) - avatarRadius,
              top: topWidgetHeight - avatarRadius,
            ),
            Column(
              children: [
                new Container(
                  alignment: Alignment.topCenter,
                  padding: EdgeInsets.only(top: topWidgetHeight + 70, bottom: 0),
                  child: Text(
                    "Hieu Ho",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                        child: Icon(
                      CupertinoIcons.home,
                      size: 18,
                      color: Color(0xFF4c3f98).withOpacity(0.7),
                    )),
                    Container(
                      padding: EdgeInsets.fromLTRB(7, 7, 7, 1),
                      child: Text(
                        "Da Nang",
                        style: TextStyle(color: Color(0xFF4c3f98)),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.fromLTRB(7, 5, 7, 1),
                      child: Text(
                        "•",
                        style: TextStyle(color: Colors.black12.withOpacity(0.2)),
                      ),
                    ),
                    Container(
                        padding: EdgeInsets.fromLTRB(7, 5, 0, 1),
                        child: Icon(
                          CupertinoIcons.person_alt_circle,
                          size: 19,
                          color: Color(0xFF4c3f98).withOpacity(0.7),
                        )),
                    Container(
                      padding: EdgeInsets.fromLTRB(7, 5, 7, 1),
                      child: Text(
                        "Age: 21",
                        style: TextStyle(color: Color(0xFF4c3f98)),
                      ),
                    ),
                  ],
                ),
                ScheduleIntro(),
                Schedule(),
              ],
            )
          ],
        ),
      ),
      bottomNavigationBar: BottomNavBar(),
    );
  }
}



