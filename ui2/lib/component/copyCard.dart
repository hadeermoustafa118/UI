import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CopyCard extends StatelessWidget {
   CopyCard({Key? key}) : super(key: key);
String text = '    OX4afD23d674E7266Cc81F....';
  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Container(
        width: double.infinity,
        height: 50,
        decoration: BoxDecoration(
            border: Border.all(color: Colors.white24),
          color: Colors.transparent,
          borderRadius: BorderRadius.circular(16.0),),


        ),

      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(text,style: TextStyle(color: Colors.white54,)),
          IconButton(onPressed: (){
            Clipboard.setData(new ClipboardData(text:text)).then((_) {
              ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Copied To ClipBprad!'),));
            });
          }, icon: Icon(Icons.copy, color: Colors.white,),),
        ],
      )
    ]);
  }
}
