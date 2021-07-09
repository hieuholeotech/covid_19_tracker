import 'package:flutter/material.dart';
class StatsCardItem extends StatelessWidget {
  const StatsCardItem({
    Key key,
    this.top,
    this.bottom,
    this.left,
    this.right,
    this.statsNumber,
    this.statsTitle,
    this.numberColor
  }) : super(key: key);

  final double top, left, bottom, right;
  final String statsTitle, statsNumber;
  final Color numberColor;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.only(
          right: right,
          bottom: bottom,
          top: top,
          left: left
      ),
      width: (size.width / 2) - 30,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(10)),
          boxShadow: [
            BoxShadow(
                offset: Offset(0, 10),
                blurRadius: 50,
                color: Color(0xFF0996f1).withOpacity(0.13))
          ]),
      child: Container(
        padding: EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(bottom: 10),
              child: Text(
                statsNumber,
                style: TextStyle(
                  color: numberColor,
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Text(
              "$statsTitle",
              style: TextStyle(color: Color(0xFF646464)),
            )
          ],
        ),
      ),
    );
  }
}

class StatsCard extends StatelessWidget {
  const StatsCard({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            StatsCardItem(right: 20, bottom: 20, top: 20, left: 20, statsNumber: "21,560", statsTitle: "Total Cases", numberColor: Color(0xFFe54a4a),),
            StatsCardItem(right: 20, bottom: 20, top: 20, left: 0, statsNumber: "13,430", statsTitle: "Being Treated", numberColor: Color(0xFFff9c00),),
          ],
        ),
        Row(
          children: [
            StatsCardItem(right: 20, bottom: 30, top: 0, left: 20, statsNumber: "8,022", statsTitle: "Total Recovered", numberColor: Color(0xFF28a745),),
            StatsCardItem(right: 20, bottom: 30, top: 0, left: 0, statsNumber: "104", statsTitle: "Total Deaths", numberColor: Color(0xFF646464),),
          ],
        )
      ],
    );
  }
}