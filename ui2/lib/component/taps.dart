import 'package:flutter/material.dart';

class Taps extends StatelessWidget {
  const Taps({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
            child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Column(
              children: [
                Text(
                  'Created',
                  style: TextStyle(color: Colors.white, fontSize: 18.0),
                ),
                SizedBox(height: 10.0),
                Container(
                  height: 2.0,
                  width: 100.0,
                  color: Colors.white,
                )
              ],
            ),
            Column(
              children: [
                Text(
                  'Collections',
                  style: TextStyle(color: Colors.white38, fontSize: 18.0),
                ),
                SizedBox(height: 10.0),
                Container(
                  height: 2.0,
                  width: 100.0,
                  color: Colors.black45,
                )
              ],
            ),
            Column(
              children: [
                Text(
                  'Owned',
                  style: TextStyle(color: Colors.white38, fontSize: 18.0),
                ),
                SizedBox(height: 10.0),
                Container(
                  height: 2.0,
                  width: 100.0,
                  color: Colors.black45,
                )
              ],
            ),
          ],
        )),
        SizedBox(height: 30.0,),
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20.0),
          ),
          height: 300,
          width: 300,
          child: ClipRRect(child: Image.asset('img/vase.jpg'), borderRadius: BorderRadius.circular(20.0),),
        )
      ],
    );
  }
}
