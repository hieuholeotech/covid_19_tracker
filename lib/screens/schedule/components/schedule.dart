import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Schedule extends StatelessWidget {
  const Schedule({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ScheduleItem(
          mainDate: '11/06/2000',
          content: 'Đi mua đồ tại Lotte Mart\nĐi hớt tóc tại 123 Núi Thành',
        ),
        ScheduleItem(
          mainDate: '11/06/2000',
          content: 'Đi mua đồ tại Lotte Mart\nĐi hớt tóc tại 123 Núi Thành',
        ),
        ScheduleItem(
          mainDate: '11/06/2000',
          content: 'Đi mua đồ tại Lotte Mart\nĐi hớt tóc tại 123 Núi Thành',
        ),
        ScheduleItem(
          mainDate: '11/06/2000',
          content: 'Đi mua đồ tại Lotte Mart\nĐi hớt tóc tại 123 Núi Thành',
        ),
        ScheduleItem(
          mainDate: '11/06/2000',
          content: 'Đi mua đồ tại Lotte Mart\nĐi hớt tóc tại 123 Núi Thành',
        ),
        ScheduleItem(
          mainDate: '11/06/2000',
          content: 'Đi mua đồ tại Lotte Mart\nĐi hớt tóc tại 123 Núi Thành',
        )
      ],
    );
  }
}


class ScheduleItem extends StatelessWidget {
  const ScheduleItem({Key key, this.mainDate, this.content}) : super(key: key);

  final String mainDate, content;
  @override
  Widget build(BuildContext context) {
    Size sizeHeight = MediaQuery.of(context).size;
    Size sizeWidth = MediaQuery.of(context).size;

    return Padding(
      padding: new EdgeInsets.only(
          left: 10,
          right: 10,
          top: 10
      ),
      child: new Column(
        children: <Widget>[
          IntrinsicHeight(
            child: new Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Wrap(
                  direction: Axis.vertical,
                  children: <Widget>[
                    new Container(
                      width: 30.0,
                      child: new Center(
                        child: new Stack(
                          children: <Widget>[
                            new Padding(
                              padding: new EdgeInsets.only(left: 9.0),
                              child: new Container(
                                  margin: new EdgeInsets.symmetric(vertical: 4.0),
                                  height: double.infinity,
                                  width: 1.0,
                                  color: Color(0xFF4c3f98).withOpacity(0.3)),
                            ),
                            new Container(
                              padding: new EdgeInsets.all(4),
                              child: new Icon(CupertinoIcons.shield, color: Colors.white, size: 11,),
                              decoration: new BoxDecoration(
                                  color: Color(0xFF4c3f98), shape: BoxShape.circle),
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                Container(
                  width: sizeWidth.width - 70,
                  margin: EdgeInsets.only(left: 10, bottom: 20),
                  padding: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                          offset: Offset(0, 10),
                          blurRadius: 50,
                          color: Color(0xFF0996f1).withOpacity(0.13))
                    ],
                  ),
                  child: new Expanded(
                    child: new Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        new Padding(
                          padding: new EdgeInsets.only(left: 0),
                          child: new Text(
                            mainDate,
                            style: new TextStyle(
                                fontWeight: FontWeight.w500,
                                color: Color(0xFF4c3f98),
                                fontSize: 14.0),
                          ),
                        ),
                        new Padding(
                          padding: new EdgeInsets.only(left: 0, top: 5.0, bottom: 5),
                          child: new Text(
                            content, style: TextStyle(
                              color: Color(0xFF4c3f98).withOpacity(0.6)
                          ),),
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}