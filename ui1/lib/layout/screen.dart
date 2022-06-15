import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:ui1/component/box.dart';
import 'package:ui1/component/card.dart';
import 'dart:math' as math;
import 'package:custom_navigation_bar/custom_navigation_bar.dart';

class Screen extends StatelessWidget {
   Screen({Key? key}) : super(key: key);
int selected = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        systemOverlayStyle: SystemUiOverlayStyle(
          statusBarColor: Colors.transparent
        ),
        elevation: 0.0,
        leading: Row(
          children: [
            SizedBox(width: 30.0,),
            Transform.rotate(angle: 270*math.pi/180,child: Icon(Icons.filter_list , size: 22 , color: Colors.black,)),
          ],
        ),
        actions: [
          Row(children: [
            Container(
              padding: EdgeInsets.all(2.0),
              height: 50,
              width: 50,
              child: ClipRRect(child: Image.asset('images/profile.jpg', ), borderRadius: BorderRadius.circular(18.0),),
            decoration: BoxDecoration(
              border: Border.all(
                color: Colors.grey,
                width: 2.0
              ),
              borderRadius: BorderRadius.circular(18.0),
            ),),
           // CircleAvatar(backgroundImage: AssetImage('images/profile.jpg'),),
            SizedBox(width: 30.0,),
          ],)
        ],
        //shadowColor: Colors.transparent,
        backgroundColor: Colors.white,

      ),
      body: Container(
        height: double.infinity,

        color: Colors.white,
        child: SingleChildScrollView(
          child: Column(
            children: [
              CardName(),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(width: 25.0,),
                 Item(width: 160, height: 160, num: '230K', icon: Icons.analytics_outlined, des: 'Sales', color:  Color(0xFF80DEEA)),
                  SizedBox(width: 35.0,),
                  Item(width: 160, height: 200, num: '8.549K', icon: Icons.person_pin_circle_outlined, des: 'Customers', color:  Color(0xFFE1BEE7)),

                ],
              ),
              Row(

                children: [
                  SizedBox(width: 25.0,),
                  Item(width: 160, height: 200, num: '1.423K', icon: Icons.web, des: 'Products', color: Color(0xFFEEEEEE)),
                  SizedBox(width: 35.0,),
                  Item(width: 160, height: 160, num: '9745\$', icon: Icons.pie_chart, des: 'Revenue', color: Color(0xFFFBE9E7)),

                ],
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: CustomNavigationBar(
        elevation: 0.0,
        selectedColor: Color(0xFFE1BEE7),

        currentIndex: selected,
        onTap: (value){},
        items: [
        CustomNavigationBarItem(icon: Icon(Icons.home)),
        CustomNavigationBarItem(icon: Icon(Icons.wallet_giftcard_outlined),),
        CustomNavigationBarItem(icon: Icon(Icons.bar_chart),),
        CustomNavigationBarItem(icon: Icon(Icons.person_outline),),

      ],),
      // bottomNavigationBar: BottomNavigationBar(
      //   backgroundColor: Colors.white,
      //   currentIndex: selected  ,
      //   showSelectedLabels: false,
      //   showUnselectedLabels: false,
      //   items: [
      //   BottomNavigationBarItem(icon: Icon(Icons.home,color: Colors.grey,size: 28,),label: ''),
      //   BottomNavigationBarItem(icon: Icon(Icons.calendar_today_rounded ,color: Colors.grey,size: 22,),label: ''),
      //   BottomNavigationBarItem(icon: Icon(Icons.filter ,color: Colors.grey,size: 22,),label: ''),
      //   BottomNavigationBarItem(icon: Icon(Icons.person_outline,color: Colors.grey,size: 28, ),label: ''),
      // ],),
    );
  }
}
