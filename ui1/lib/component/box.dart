import 'package:flutter/material.dart';

class Item extends StatelessWidget {
  Item(
      {Key? key, required this.width,
      required this.height,
      required this.num,
      required this.icon,
      required this.des,
      required this.color}) : super(key: key);
  double width;
  double height;
  String num;
  IconData icon;
  String des;
  Color color;
  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(18.0), color: color),
        width: width,
        height: height,
      ),
      Container(
        padding: EdgeInsets.symmetric(vertical: 40.0, horizontal: 45.0),

        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Icon(icon),
            SizedBox(
              height: 10.0,
            ),
            Text(
              num,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 22,
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            Text(
              des,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.grey,
              ),
            )
          ],
        ),
      )
    ]);
  }
}
