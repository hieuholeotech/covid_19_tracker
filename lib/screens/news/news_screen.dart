import 'package:covid_19/components/bottom_nav_bar.dart';
import 'package:covid_19/screens/news/components/list_post.dart';
import 'package:flutter/material.dart';
class NewsScreen extends StatelessWidget {
  const NewsScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Recent Posts", style: TextStyle(
          fontSize: 16
        ),),
        elevation: 0,
      ),
      body: ListPosts(),
      bottomNavigationBar: BottomNavBar(),
    );
  }
}