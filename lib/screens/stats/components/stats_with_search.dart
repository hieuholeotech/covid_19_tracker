import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class StatsSearch extends StatelessWidget {
  const StatsSearch({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      padding: EdgeInsets.symmetric(horizontal: 20),
      margin: EdgeInsets.all(20),
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
    );
  }
}