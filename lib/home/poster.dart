import 'dart:ui';

import 'package:flutter/material.dart';

class Poster extends StatelessWidget {
  const Poster({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        children: [
          Container(

            width: MediaQuery.of(context).size.width,
            height:MediaQuery.of(context).size.height * .3 ,
            alignment: Alignment.center,
            padding: EdgeInsets.symmetric(vertical: 15),
            child: Container(
                height: 280,
                width: 350,
             decoration: BoxDecoration(
               color: Colors.red,
               border: Border.all(
                   width: 3.0
               ),
               borderRadius: BorderRadius.all(
                   Radius.circular(20)
               ),

        image:  DecorationImage(
            image: AssetImage("asset/poster/maxresdefault.jpg"),
            fit: BoxFit.cover,


    ),
    ),
      ),
          ),
          Positioned(
            bottom:10,
            right: 80,
            child: CircleAvatar(
              radius: 30,
              backgroundImage: AssetImage("asset/poster/mx.jpg"),
            ),
          )
    ]),
    );
  }
}
