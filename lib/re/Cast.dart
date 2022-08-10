import 'package:flutter/material.dart';

class Cast extends StatelessWidget {
   Cast({Key? key, required this.Image, required this.name}) : super(key: key);
final String Image;
final String name;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        height: 100,
        child: Column(
                children: [
                  Container(
                    height: 100,
                    width: 100,
                    decoration: BoxDecoration(
                      color: Colors.red,
                      border: Border.all(width: 3.0),
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                      image: DecorationImage(
                        image: AssetImage(Image),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Text(name,style: TextStyle(color: Colors.white)),


          ],
        ),
      ),
    );
  }
}
