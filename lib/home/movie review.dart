import 'package:flutter/material.dart';
import 'package:mymovie/re/Cast.dart';
import 'package:mymovie/re/tabbar.dart';

class MoviedeReview extends StatelessWidget {
  const MoviedeReview({Key? key}) : super(key: key);
  final sampleParagraph =
      "woman named Avantika fighting Mahishmati soldiers. He discovers that she is a member of a local resistance group dedicated to overthrowing the tyrannical king of Mahishmati, Lord Bhallaladeva, and rescuing royal captive Princess Devasena. Sivudu is immediately smitten with Avantika and secretly follows her, even managing to draw a tattoo on her hand while she sleeps. When she discovers Sivudu she attacks him, but he outmaneuvers her and returns her mask. Realizing he scaled the entire mountain to find her, she reciprocates his feelings.";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: ListView(
        children: [
          Container(
            height: 80,
            child: Tabbarm(
              subject: 'Trailers',
            ),
          ),
          Stack(
            children: [
              Container(
                height: 400,
                width: 390,
                decoration: BoxDecoration(
                  color: Colors.red,
                  border: Border.all(width: 3.0),
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                  image: DecorationImage(
                    image: AssetImage("asset/poster/download.jpg"),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Positioned(
                bottom: 10,
                right: 60,
                child: CircleAvatar(
                  radius: 30,
                  backgroundImage: AssetImage("asset/poster/mx.jpg"),
                ),
              ),
              Positioned(
                  bottom: 45,
                  right: 150,
                  child: Text(
                    "Available Now",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                      color: Colors.white,
                    ),
                  )),
              Positioned(
                  bottom: 20,
                  right: 130,
                  child: Text(
                    "Watch Movie",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 25,
                      color: Colors.white,
                    ),
                  )),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(left: 18.0),
            child: Align(
              alignment: Alignment.topLeft,
              child: Text(
                "The plot",
                style: const TextStyle(color: Colors.white, fontSize: 18),
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            width: 280,
            height: 100,
            color: Colors.black,
            child: Text(
              sampleParagraph,
              style: TextStyle(color: Colors.white),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 18, top: 10),
            child: Align(
              alignment: Alignment.topLeft,
              child: Column(
                children: [
                  Text(
                    "Director:Todd Phillips",
                    style: TextStyle(color: Colors.white),
                  ),
                  Text(
                    "writer:Laura Ballinger",
                    style: TextStyle(color: Colors.white),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 18, top: 10),
            child: Align(
              alignment: Alignment.topLeft,
              child: Text(
                "The Cast",
                style: TextStyle(color: Colors.white, fontSize: 18),
              ),
            ),
          ),
          ListView(
             scrollDirection: Axis.horizontal,
            children: [
              Cast(
                  Image: "asset/poster/maxresdefault.jpg",
                  name: "sulaiman"),
              Cast(
                  Image: "asset/poster/maxresdefault.jpg",
                  name: "sulaiman"),
              Cast(
                  Image: "asset/poster/maxresdefault.jpg",
                  name: "sulaiman"),
              Cast(
                  Image: "asset/poster/maxresdefault.jpg",
                  name: "sulaiman"),
              Cast(
                  Image: "asset/poster/maxresdefault.jpg",
                  name: "sulaiman"),
              Cast(
                  Image: "asset/poster/maxresdefault.jpg",
                  name: "sulaiman"),
              Cast(
                  Image: "asset/poster/maxresdefault.jpg",
                  name: "sulaiman"),
              Cast(
                  Image: "asset/poster/maxresdefault.jpg",
                  name: "sulaiman"),
              Cast(
                  Image: "asset/poster/maxresdefault.jpg",
                  name: "sulaiman"),
              Cast(
                  Image: "asset/poster/maxresdefault.jpg",
                  name: "sulaiman"),
            ],
          ),
        ],
      ),
    );
  }
}
