import 'package:covid_19/screens/home/home_screen.dart';
import 'package:covid_19/screens/news/news_screen.dart';
import 'package:covid_19/screens/news_detail/news_detail_screen.dart';
import 'package:covid_19/screens/profile/profile.dart';
import 'package:covid_19/screens/stats/stats_screen.dart';
import 'package:flutter/material.dart';
class BottomNavBar extends StatelessWidget {
  const BottomNavBar({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(color: Colors.white, boxShadow: [
        BoxShadow(offset: Offset(0, -10), blurRadius: 50, color: Color(0xFF0996f1).withOpacity(0.25))
      ]),
      padding: EdgeInsets.symmetric(horizontal: 20.0),
      height: 50.0,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          GestureDetector(
            child: Container(
              height: 40.0,
              width: 70.0,
              decoration: BoxDecoration(
                color: Color(0XFF4C79FF),
                borderRadius: BorderRadius.circular(20.0),
              ),
              child: Icon(
                Icons.home,
                color: Colors.white,
              ),
            ),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => HomeScreen(),
                ),
              );
            },
          ),
          GestureDetector(
            child: Container(
              height: 40.0,
              width: 70.0,
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(20.0)),
              child: Icon(
                Icons.insert_chart,
                color: Color(0XFF999FbF),
              ),
            ),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => StatsScreen(),
                ),
              );
            },
          ),
          GestureDetector(
            child: Container(
              height: 40.0,
              width: 70.0,
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(20.0)),
              child: Icon(
                Icons.library_books,
                color: Color(0XFF999FbF),
              ),
            ),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => NewsScreen(),
                ),
              );
            },
          ),
          GestureDetector(
            child: Container(
              height: 40.0,
              width: 70.0,
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(20.0)),
              child: Icon(
                Icons.report,
                color: Color(0XFF999FbF),
              ),
            ),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ProfileScreen(),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}