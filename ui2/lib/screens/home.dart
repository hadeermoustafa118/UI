import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:ui2/component/card.dart';
import 'package:ui2/component/secondCard.dart';
import 'package:ui2/component/thirdCard.dart';
import 'package:ui2/screens/profile.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.white,
        systemOverlayStyle:
            SystemUiOverlayStyle(statusBarColor: Colors.transparent),
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Mrcinema3d',
              style: TextStyle(color: Colors.black, fontSize: 24),
            ),
            SizedBox(
              height: 5.0,
            ),
            Text(
              'Softworld Collection',
              style: TextStyle(color: Colors.grey, fontSize: 15),
            ),
          ],
        ),
        leading: ClipRRect(
          child: GestureDetector(
            child: Image.asset('img/bubble.jpg'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const Profile()),
              );
            },
          ),
          borderRadius: BorderRadius.circular(50.0),
        ),
        actions: [
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text(
                'Current bid',
                style:
                    TextStyle(color: Colors.grey, fontWeight: FontWeight.bold),
              ),
              Text(
                '15.00 ETH',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
            ],
          ),
          SizedBox(
            width: 15,
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: EdgeInsets.symmetric(vertical: 30, horizontal: 30),
                height: 400,
                width: double.infinity,
                child: ClipRRect(
                  child: Image.asset('img/chair.jpg'),
                  borderRadius: BorderRadius.circular(60.0),
                ),
              ),
              Container(
                  padding: EdgeInsets.symmetric(horizontal: 40, ),
                  child: Text(
                    'Peaceful',
                    style: TextStyle(color: Colors.black, fontSize: 40),
                  )),
              Container(
                  padding: EdgeInsets.symmetric(horizontal: 40),
                  child: Text(
                    'space',
                    style: TextStyle(color: Colors.black, fontSize: 40),
                  )),
              Container(
                padding: EdgeInsets.symmetric(vertical: 5.0, horizontal: 40),
                child: Text(
                  '''Technology and innovation is constantly changing the way
consumers inteeract with each other. we identified two 
problems we were trying to solve.''',
                  style: TextStyle(fontSize: 12, height: 1.4),
                ),
              ),
              CArd(),
              SecondCard(),
              ThirdCard()
            ],
          ),
        ),
      ),
    );
  }
}
