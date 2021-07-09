import 'package:covid_19/screens/news_detail/components/article.dart';
import 'package:flutter/material.dart';

class News extends StatelessWidget {
  const News({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        NewsItem(
          image: "asset/news1.png",
          title: "Lorem ispsum is simply dummy text of the printing and typesetting industry industry",
          description: "Lorem ispsum is simply dummy text of the printing and typesetting industry industry",
          press: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => Article(),
              ),
            );
          },
        ),
        NewsItem(
          image: "asset/news1.png",
          title: "Lorem ispsum is simply dummy text of the printing and typesetting industry industry",
          description: "Lorem ispsum is simply dummy text of the printing and typesetting industry industry",
          press: () {},
        ),
        NewsItem(
          image: "asset/news1.png",
          title: "Lorem ispsum is simply dummy text of the printing and typesetting industry industry",
          description: "Lorem ispsum is simply dummy text of the printing and typesetting industry industry",
          press: () {},
        ),
      ],
    );
  }
}

class NewsItem extends StatelessWidget {
  const NewsItem({
    Key key,
    this.image,
    this.title,
    this.description,
    this.press
  }) : super(key: key);

  final String image, title, description;
  final Function press;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return  GestureDetector(
      onTap: press,
      child: Container(
        padding: EdgeInsets.only(right: 20, top: 0, bottom: 20, left: 20),
        child: Container(
          decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                    offset: Offset(0, 10),
                    blurRadius: 50,
                    color: Color(0xFF0996f1).withOpacity(0.1))
              ]),
          child: Column(
            children: [
              Row(
                children: [
                  Container(
                    padding: EdgeInsets.only(right: 20),
                    width: size.width * 0.3,
                    child: ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Image.asset(image, fit: BoxFit.cover)),
                  ),
                  Container(
                    width: (size.width * 0.7) - 60,
                    child: Column(
                      children: [
                        Container(
                          padding: EdgeInsets.only(bottom: 7),
                          child: Text(
                              title,
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                  color: Color(0xFF211b9a).withOpacity(0.9), fontSize: 14, fontWeight: FontWeight.bold)),
                        ),
                        Text(
                            description,
                            maxLines: 3,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                                color: Color(0xFF333333).withOpacity(0.6), fontSize: 12)),
                      ],
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}