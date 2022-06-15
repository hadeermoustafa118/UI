import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:ui2/component/copyCard.dart';
import 'package:ui2/component/numCard.dart';
import 'package:ui2/component/taps.dart';

class Profile extends StatelessWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black54,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        systemOverlayStyle:
            SystemUiOverlayStyle(statusBarColor: Colors.transparent),
        title: Text(
          'Profile',
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
        actions: [
          Icon(
            Icons.more_vert,
            color: Colors.white,
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 35.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CircleAvatar(
                child: ClipRRect(
                  child: Image.asset('img/bubble.jpg'),
                  borderRadius: BorderRadius.circular(60.0),
                ),
                radius: 60.0,
              ),
              SizedBox(
                height: 20.0,
              ),
              Row(
                children: [
                  Text(
                    'Mr.cinema3d',
                    style: TextStyle(color: Colors.white, fontSize: 28.0),
                  ),
                  SizedBox(
                    width: 10.0,
                  ),
                  Icon(
                    Icons.verified,
                    color: Colors.tealAccent,
                    size: 28.0,
                  )
                ],
              ),
              SizedBox(
                height: 6.0,
              ),
              Text(
                '@mrcinema3d',
                style: TextStyle(color: Color(0xFFE1BEE7), fontSize: 20),
              ),
              SizedBox(
                height: 12.0,
              ),
              Text(
                '''Visual artist inspired by fellings,
surroundings and everything in between.''',
                style: TextStyle(color: Colors.white54, height: 1.4, fontSize: 18),
              ),
              SizedBox(height: 20.0,),
              CopyCard(),
              SizedBox(height: 15.0,),
              NumbersCard(),
              SizedBox(height: 20.0,),
              Taps(),
            ],
          ),
        ),
      ),

    );
  }
}
