import 'package:flutter/material.dart';

class PostItem extends StatelessWidget {
  const PostItem({Key key, this.image, this.title, this.description, this.press}) : super(key: key);

  final String image, title, description;
  final Function press;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: press,
      child: Container(
        padding: EdgeInsets.only(right: 20, top: 0, bottom: 20, left: 20),
        child: Container(
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