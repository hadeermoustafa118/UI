import 'package:flutter/material.dart';
class SecondCard extends StatelessWidget {
  const SecondCard({Key? key}) : super(key: key);

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
                border: Border(
                  bottom: BorderSide(width: 1.0, color: Colors.black)
                ),
              ),
            ),
            Container(
                padding: EdgeInsets.only(left: 15.0, right: 15.0),
                width: double.infinity,
                height: 50,
                child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Auction Price', style: TextStyle(fontSize: 14,color: Colors.grey, ),),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text('15.00 ETH', style: TextStyle(fontSize: 17,color: Colors.black, fontWeight: FontWeight.bold),),
                  Text('\$ 68.943.450', style: TextStyle(fontSize: 10,color: Colors.grey),),
                ],
              )
              ],
            ))

          ],

      ),
    );
  }
}
