import 'package:covid_19/components/bottom_nav_bar.dart';
import 'package:covid_19/screens/home/components/card_item.dart';
import 'package:covid_19/screens/home/components/header_with_btn.dart';
import 'package:covid_19/screens/home/components/news.dart';
import 'package:covid_19/screens/home/components/stats_card.dart';
import 'package:covid_19/screens/news_detail/news_detail_screen.dart';
import 'package:covid_19/screens/schedule/schedule.dart';
import 'package:covid_19/screens/sign_up/signup_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
          elevation: 0,
          title: Row(
            children: <Widget>[
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => SignUpScreen(),
                    ),
                  );
                },
                child: CircleAvatar(
                  radius: 20,
                  backgroundImage: NetworkImage(
                      "https://instagram.fdad2-1.fna.fbcdn.net/v/t51.2885-15/e35/149682940_115200393869131_9095836763101388810_n.jpg?tp=1&_nc_ht=instagram.fdad2-1.fna.fbcdn.net&_nc_cat=107&_nc_ohc=NjyLbTsTvo4AX93Q0TY&edm=AP_V10EBAAAA&ccb=7-4&oh=5da2a9bfe88bccd9b12cac0fc9e67e84&oe=60ED0CAA&_nc_sid=4f375e"),
                ),
              ),
              Spacer(),
              Container(
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.06),
                      spreadRadius: 2,
                      blurRadius: 50,
                      offset: Offset(0, -7),
                    ),
                  ],
                ),
                child: ElevatedButton(
                  onPressed: () {},
                  child: Icon(
                    CupertinoIcons.bell,
                    size: 17,
                    color: Colors.black87,
                  ),
                  style: ElevatedButton.styleFrom(
                      shape: CircleBorder(),
                      padding: EdgeInsets.all(1),
                      primary: Colors.white,
                      shadowColor: Colors.white),
                ),
              )
            ],
          )),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 30),
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "Hi, Hieu Ho",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Color(0xFF1a325b),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      alignment: Alignment.center,
                      padding: EdgeInsets.symmetric(horizontal: 20),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20),
                          boxShadow: [
                            BoxShadow(
                                offset: Offset(0, 10),
                                blurRadius: 50,
                                color: Color(0xFF0996f1).withOpacity(0.25))
                          ]),
                      child: Row(
                        children: <Widget>[
                          Expanded(
                            child: TextField(
                                onChanged: (value) {},
                                decoration: InputDecoration(
                                  hintText: "Search",
                                  hintStyle: TextStyle(
                                    color: Color(0xFF3C4046).withOpacity(0.3),
                                  ),
                                  enabledBorder: InputBorder.none,
                                  focusedBorder: InputBorder.none,
                                )),
                          ),
                          Icon(
                            CupertinoIcons.search,
                            color: Color(0xFFec393b),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
            GestureDetector(
              child: CardItem(
                title: "Follow your schedule",
                description:
                    "Lorem ispsum is simply dummy text of the printing and typesetting industry industry",
                imageIcon: "asset/corona-ico.png",
                iconColor: Color(0xFFF544df3),
                iconRightColor: Color(0xFFF544df3),
                primary: Color(0xFFFffffff),
                titleColor: Color(0xFFF544df3),
                descriptionColor: Color(0xFFF544df3),
                press: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ScheduleScreen(),
                    ),
                  );
                },
              ),
            ),
            CardItem(
              title: "Follow your schedule",
              description:
                  "Lorem ispsum is simply dummy text of the printing and typesetting industry industry",
              imageIcon: "asset/corona-ico.png",
              iconColor: Color(0xFF6059f6),
              iconRightColor: Color(0xFFffffff),
              primary: Color(0xFFF544df3),
              titleColor: Color(0xFFffffff),
              descriptionColor: Color(0xFFffffff),
              press: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => SignUpScreen(),
                    ),
                  );
              },
            ),
            HeaderWithBtn(
              mainTitle: "Case Update",
              subTitle: "Newest update March 28",
              textBtn: "See Details",
              btnPress: () {},
            ),
            StatsCard(),
            HeaderWithBtn(
              mainTitle: "News",
              subTitle: "Newest about covid-19",
              textBtn: "More",
              btnPress: () {},
            ),
            News()
          ],
        ),
      ),
      bottomNavigationBar: BottomNavBar(),
    );
  }
}
