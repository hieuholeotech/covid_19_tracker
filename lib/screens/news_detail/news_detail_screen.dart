import 'package:covid_19/screens/news_detail/components/article.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ArticlesScreen extends StatelessWidget {
  const ArticlesScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Article(
        image: "asset/post1.png",
        title: "Flutter Google News app UI Redesign | Speed Code",
        category: "Covid-19",
        date: "11/06/2021",
        content: "Mobile app development is one of the fastest-growing and evolving industries today. To build a successful mobile app that stands out from its competitors in the app store, it is needed not only have a great app development strategy but also be aware of the latest mobile app development trends and tendencies. To help you keep abreast of the latest innovations in mobile app development, we have collected this list of the six most prominent trends. Read about them here. Mobile app development is one of the fastest-growing and evolving industries today. \n\nTo build a successful mobile app that stands out from its competitors in the app store, it is needed not only have a great app development strategy but also be aware of the latest mobile app development trends and tendencies. To help you keep abreast of the latest innovations in mobile app development, we have collected this list of the six most prominent trends. Read about them here.",
      )
    );

  }
}
