import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class NumbersCard extends StatelessWidget {
  const NumbersCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: double.infinity,
          height: 100,
          decoration: BoxDecoration(
            color: Colors.white24,
            borderRadius: BorderRadius.circular(20.0),
          ),
        ),
        Container(
          padding: EdgeInsets.symmetric(vertical: 25.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Column(
                children: [
                Text('87.5K',style: TextStyle(color: Colors.white, fontSize: 20),),
                SizedBox(height: 5.0,),
                Text('Followers',style: TextStyle(color: Colors.white, fontSize: 13),),
              ],),
              Column(children: [
                Text('453' ,style: TextStyle(color: Colors.white, fontSize: 20),),
                SizedBox(height: 5.0,),
                Text('Following',style: TextStyle(color: Colors.white, fontSize: 13),),
              ],),
              Column(
                children: [
                  Row(children: [
                    Icon(Icons.menu, color: Colors.white,),
                    Text('7.05' ,style: TextStyle(color: Colors.white, fontSize: 20),),
                  ],),
                  SizedBox(height: 5.0,),
                  Text('Floor Price',style: TextStyle(color: Colors.white, fontSize: 13),),
                ],
              )
            ],
          ),
        )
      ],
    );
  }
}
