import 'package:flutter/material.dart';

class HeaderWithBtn extends StatelessWidget {
  const HeaderWithBtn({
    Key key,
    this.mainTitle,
    this.subTitle,
    this.textBtn,
    this.btnPress
  }) : super(key: key);

  final String mainTitle;
  final String subTitle;
  final String textBtn;
  final Function btnPress;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 30),
      child: Row(
        children: <Widget>[
          RichText(
            text: TextSpan(
              children: [
                TextSpan(
                  text: "$mainTitle\n",
                  style: TextStyle(
                      color: Color(0xFF1a325b), fontWeight: FontWeight.bold, fontSize: 18),
                ),
                TextSpan(
                  text: "$subTitle",
                  style: TextStyle(color: Color(0xFF646464)),
                ),
              ],
            ),
          ),
          Spacer(),
          Text(
            "$textBtn",
            style: TextStyle(
              color: Color(0xFF005b93),
              fontWeight: FontWeight.w600,
            ),
          ),
        ],
      ),
    );
  }
}