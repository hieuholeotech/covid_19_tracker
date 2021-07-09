import 'package:covid_19/screens/news/components/list_post.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ArticleAction extends StatelessWidget {
  const ArticleAction({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 0,
      left: 0,
      right: 0,
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
        ),
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              GestureDetector(
                child: Icon(
                  CupertinoIcons.chevron_left,
                  size: 30,
                  color: Colors.black,
                ),
                onTap: () {
                  Navigator.pop(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ListPosts(),
                    ),
                  );
                },
              ),
              Row(
                children: [
                  Icon(
                    CupertinoIcons.heart_fill,
                    color: Colors.black12,
                    size: 28,
                  ),
                  Container(
                    alignment: Alignment.center,
                    padding: EdgeInsets.only(top: 7, left: 4),
                    child: Text("22", style: TextStyle(
                        color: Colors.black,
                        fontSize: 16
                    ),),
                  )
                ],
              ),
              Row(
                children: [
                  Icon(
                    CupertinoIcons.chat_bubble_2_fill,
                    color: Colors.black12,
                    size: 28,
                  ),
                  Container(
                    alignment: Alignment.center,
                    padding: EdgeInsets.only(top: 7, left: 4),
                    child: Text("22", style: TextStyle(
                        color: Colors.black,
                        fontSize: 16
                    ),),
                  )
                ],
              ),
              Icon(
                CupertinoIcons.share,
                size: 28,
                color: Colors.black,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
