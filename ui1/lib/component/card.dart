import 'package:flutter/material.dart';
class CardName extends StatelessWidget {
  const CardName({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 180,
      width: double.infinity,
      child: Stack(
       alignment: AlignmentDirectional.center,
        children: [
          Center(
            child: Container(height: 100, width: 400,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(18),
              color: Colors.white,
            ),),
          ),
          Container(height: 60,
            width: 350,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Hello David', style: TextStyle(fontWeight: FontWeight.w900, fontSize: 26),),
                    Text('Welcome Back !', style: TextStyle(color: Colors.grey, fontWeight: FontWeight.w900
                    ),),
                  ],
                ),

                Icon(Icons.settings_applications_outlined, color: Colors.grey,size: 30,),
              ],
            ),
          ),

        ],
      ),
    );
  }
}
