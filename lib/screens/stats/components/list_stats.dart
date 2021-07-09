import 'package:flutter/material.dart';



class ListStats extends StatelessWidget {
  const ListStats({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        child: Column(
          children: [
            StatsItem(province: "Đà Nẵng", cases: "140", treated: "200", death: "0",),
            StatsItem(province: "Đà Nẵng", cases: "140", treated: "200", death: "0",),
            StatsItem(province: "Đà Nẵng", cases: "140", treated: "200", death: "0",),
            StatsItem(province: "Đà Nẵng", cases: "140", treated: "200", death: "0",),
            StatsItem(province: "Đà Nẵng", cases: "140", treated: "200", death: "0",),
            StatsItem(province: "Đà Nẵng", cases: "140", treated: "200", death: "0",),
            StatsItem(province: "Đà Nẵng", cases: "140", treated: "200", death: "0",),
            StatsItem(province: "Đà Nẵng", cases: "140", treated: "200", death: "0",),
            StatsItem(province: "Đà Nẵng", cases: "140", treated: "200", death: "0",),
            StatsItem(province: "Đà Nẵng", cases: "140", treated: "200", death: "0",),
          ],
        ),
      ),
    );
  }
}

class StatsItem extends StatelessWidget {
  const StatsItem({Key key, this.cases, this.treated, this.death, this.province}) : super(key: key);

  final String cases, treated, death, province;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
          left: 20,
          right: 20,
          bottom: 20
      ),
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(boxShadow: [
        BoxShadow(
            offset: Offset(0, 10),
            blurRadius: 50,
            color: Color(0xFF0996f1).withOpacity(0.06))
      ],
          borderRadius: BorderRadius.circular(20),
          color: Colors.white),
      child: Row(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: EdgeInsets.only(bottom: 5),
                child: Text(
                  province,
                  style: TextStyle(
                      fontSize: 15, fontWeight: FontWeight.bold, color: Color(0xFF000000)),
                ),
              ),
              Container(
                child: Align(
                  alignment: Alignment.topLeft,
                  child: Row(
                    children: [
                      DecoratedBox(
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(width: 5.0, color: Colors.white),
                        ),
                        child: Padding(
                          padding: EdgeInsets.only(
                              left: 0,
                              bottom: 3,
                              top: 3,
                              right: 7
                          ),
                          child: Container(
                            width: 9,
                            height: 7,
                            child: Container(
                              decoration: new BoxDecoration(
                                color: Color(0xFFff9c00),
                                borderRadius: BorderRadius.circular(20),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Text(
                        treated,
                        style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            color: Color(0xFF555555)),
                      ),
                      DecoratedBox(
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(width: 5.0, color: Colors.white),
                        ),
                        child: Padding(
                          padding: EdgeInsets.only(
                              left: 20,
                              bottom: 3,
                              top: 3,
                              right: 7
                          ),
                          child: Container(
                            width: 9,
                            height: 7,
                            child: Container(
                              decoration: new BoxDecoration(
                                color: Color(0xFF666666),
                                borderRadius: BorderRadius.circular(20),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Text(
                        death,
                        style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w400,
                            color: Color(0xFF555555)),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
          Spacer(),
          Text(
            cases,
            style: TextStyle(
                fontSize: 18, fontWeight: FontWeight.bold, color: Color(0xFFc9302c)),
          )
        ],
      ),
    );
  }
}