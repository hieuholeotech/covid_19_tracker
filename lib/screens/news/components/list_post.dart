import 'package:covid_19/screens/news/components/post_item.dart';
import 'package:covid_19/screens/news_detail/news_detail_screen.dart';
import 'package:flutter/material.dart';

class ListPosts extends StatelessWidget {
  const ListPosts({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: [
          PostItem(
              title: "Lorem ispsum is simply dummy text of the printing and typesetting industry industry",
              image: "asset/news1.png",
              description: "Lorem ispsum is simply dummy text of the printing and typesetting industry industry",
              press: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ArticlesScreen(),
                  ),
                );
              },
          ),
          PostItem(
            title: "Lorem ispsum is simply dummy text of the printing and typesetting industry industry",
            image: "asset/news1.png",
            description: "Lorem ispsum is simply dummy text of the printing and typesetting industry industry",
            press: () {},
          ),
          PostItem(
            title: "Lorem ispsum is simply dummy text of the printing and typesetting industry industry",
            image: "asset/news1.png",
            description: "Lorem ispsum is simply dummy text of the printing and typesetting industry industry",
            press: () {},
          ),
          PostItem(
            title: "Lorem ispsum is simply dummy text of the printing and typesetting industry industry",
            image: "asset/news1.png",
            description: "Lorem ispsum is simply dummy text of the printing and typesetting industry industry",
            press: () {},
          ),
          PostItem(
            title: "Lorem ispsum is simply dummy text of the printing and typesetting industry industry",
            image: "asset/news1.png",
            description: "Lorem ispsum is simply dummy text of the printing and typesetting industry industry",
            press: () {},
          ),
          PostItem(
            title: "Lorem ispsum is simply dummy text of the printing and typesetting industry industry",
            image: "asset/news1.png",
            description: "Lorem ispsum is simply dummy text of the printing and typesetting industry industry",
            press: () {},
          ),
          PostItem(
            title: "Lorem ispsum is simply dummy text of the printing and typesetting industry industry",
            image: "asset/news1.png",
            description: "Lorem ispsum is simply dummy text of the printing and typesetting industry industry",
            press: () {},
          ),
          PostItem(
            title: "Lorem ispsum is simply dummy text of the printing and typesetting industry industry",
            image: "asset/news1.png",
            description: "Lorem ispsum is simply dummy text of the printing and typesetting industry industry",
            press: () {},
          ),
          PostItem(
            title: "Lorem ispsum is simply dummy text of the printing and typesetting industry industry",
            image: "asset/news1.png",
            description: "Lorem ispsum is simply dummy text of the printing and typesetting industry industry",
            press: () {},
          ),
          PostItem(
            title: "Lorem ispsum is simply dummy text of the printing and typesetting industry industry",
            image: "asset/news1.png",
            description: "Lorem ispsum is simply dummy text of the printing and typesetting industry industry",
            press: () {},
          ),
        ],
      ),
    );
  }
}

