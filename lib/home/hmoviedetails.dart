import 'package:flutter/material.dart';
import 'package:mymovie/home/movie%20review.dart';

class HmovieDetails extends StatelessWidget {
  const HmovieDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * .25,
      color: Colors.black,
      child: ListView.builder(
        itemCount: 10,
        scrollDirection: Axis.horizontal,
        itemBuilder: (BuildContext ctx, int index) => GestureDetector(
          onTap: (){
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) =>  MoviedeReview()),
            );
          },
          child: Column(
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
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Movie name",
                    style: TextStyle(color: Colors.white),
                  ),
                  Text(
                    "RH Films",
                    style: TextStyle(color: Colors.white),
                  ),
                  Row(
                    children: [
                      Icon(Icons.star,color: Colors.white,size: 12,),
                      Icon(Icons.star,color: Colors.white,size: 12,),
                      Icon(Icons.star,color: Colors.white,size: 12,),
                      Icon(Icons.star,color: Colors.white,size: 12,),
                      Icon(Icons.star,color: Colors.white,size: 12,),
                    ],
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
