import 'package:flutter/material.dart';

class CArd extends StatelessWidget {
  const CArd({Key? key}) : super(key: key);

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
              color: Color(0x9CB4E4EA),
              borderRadius: BorderRadius.circular(20.0),
            ),
          ),
          Container(
            padding: EdgeInsets.only(left: 15.0, right: 15.0),
            width: double.infinity,
            height: 50,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Auction Ends in',
                  style: TextStyle(color: Colors.black, fontSize: 16, fontWeight: FontWeight.w500),
                ),
                Text(
                  '33h 27m 59s',
                  style: TextStyle(color: Colors.black, fontSize: 16, fontWeight: FontWeight.w500),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
