import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CardItem extends StatelessWidget {
  const CardItem({Key key, this.title, this.description, this.imageIcon, this.press, this.iconColor, this.primary, this.iconRightColor, this.titleColor, this.descriptionColor}) : super(key: key);

  final String title, description, imageIcon;
  final Function press;
  final Color iconColor, primary, iconRightColor, titleColor, descriptionColor;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: () {},
      child: Padding(
        padding: const EdgeInsets.only(left: 20, bottom: 0, top: 30, right: 20),
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
          decoration: BoxDecoration(
              color: primary,
              borderRadius: BorderRadius.circular(20),
              boxShadow: [
                BoxShadow(
                    offset: Offset(0, 10),
                    blurRadius: 50,
                    color: Color(0xFF0996f1).withOpacity(0.1))
              ]),
          child: Row(
            children: [
              Container(
                  width: size.width * 0.1,
                  child: Container(
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: Color(0xFF564ff5).withOpacity(0.4),
                          spreadRadius: 2,
                          blurRadius: 20,
                          offset: Offset(2, 2),
                        ),
                      ],
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(30.0),
                      child: Container(
                        padding: EdgeInsets.all(7),
                        color: iconColor,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(30.0),
                          child: Image.asset(
                            imageIcon,
                            width: 18,
                          ),
                        ),
                      ),
                    ),
                  )),
              Container(
                width: (size.width * 0.8) - 80,
                padding: EdgeInsets.only(left: 20),
                child: Column(
                  children: [
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Container(
                        margin: EdgeInsets.only(bottom: 5),
                        child: Text(
                          title,
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                              color: titleColor),
                        ),
                      ),
                    ),
                    Text(
                      description,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                          color: descriptionColor.withOpacity(0.6), fontSize: 12),
                    )
                  ],
                ),
              ),
              Container(
                  width: size.width * 0.1,
                  child: Icon(
                    CupertinoIcons.right_chevron,
                    size: 20,
                    color: iconRightColor,
                  ))
            ],
          ),
        ),
      ),
    );
  }
}