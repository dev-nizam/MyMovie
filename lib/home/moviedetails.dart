import 'package:flutter/material.dart';

class MovieDetails extends StatelessWidget {
  const MovieDetails({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {

    return  Row(
      children: [
        Column(
          children: [
            Container(
              margin: EdgeInsets.only(left: 20),
              height: 150,
              width: 100,
              decoration: BoxDecoration(
                color: Colors.red,
                border: Border.all(width: 3.0),
                borderRadius: BorderRadius.all(Radius.circular(20)),
                image: DecorationImage(
                  image: AssetImage("asset/poster/maxresdefault.jpg"),
                  fit: BoxFit.cover,
                ),
              ),
            ),Column(crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Movie name",style: TextStyle(color: Colors.white),),
                Text("RH Films",style: TextStyle(color: Colors.white)),
                Text("****",style: TextStyle(color: Colors.white)),
              ],
            )
          ],
        )
      ],
    );
  }
}
