import 'package:flutter/material.dart';
class ThirdCard extends StatelessWidget {
  const ThirdCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 5.0, horizontal: 40),
      child: Stack(
        children: [
          Container(
            width: double.infinity,
            height: 50,
            decoration: BoxDecoration(
              color: Colors.black,
              borderRadius: BorderRadius.circular(20.0),
            ),
          ),
          Container(
            padding: EdgeInsets.only(left: 120.0, top: 15.0),
            width: double.infinity,
            height: 50,
            child: Text(
              'Place a Bid',
              style: TextStyle(color: Colors.white),
            ),
          ),
        ],
      ),
    );
  }
}
