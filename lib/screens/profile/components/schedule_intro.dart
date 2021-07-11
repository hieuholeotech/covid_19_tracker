import 'package:flutter/material.dart';

class ScheduleIntro extends StatelessWidget {
  const ScheduleIntro({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size sizeHeight = MediaQuery.of(context).size;
    Size sizeWidth = MediaQuery.of(context).size;

    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(10)),
          boxShadow: [
            BoxShadow(
                offset: Offset(0, 10),
                blurRadius: 50,
                color: Color(0xFF0996f1).withOpacity(0.13))
          ]),
      child: Row(
        children: [
          Image.asset(
            "asset/schedule-art.png",
            width: sizeWidth.width / 5,
          ),
          Container(
            padding: EdgeInsets.only(left: 20),
            alignment: Alignment.topLeft,
            width: sizeWidth.width - (sizeWidth.width / 5) - 80,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: EdgeInsets.only(bottom: 10),
                  child: Text(
                    "Create Your Schedule",
                    style: TextStyle(
                        fontSize: 16,
                        color: Color(0xFF4c3f98),
                        fontWeight: FontWeight.bold),
                    textAlign: TextAlign.left,
                  ),
                ),
                Text(
                  "Hi Hieu, Let's create you schedule now and it will help you much!",
                  style:
                  TextStyle(fontSize: 14, color: Color(0xFF4c3f98).withOpacity(0.7)),
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}