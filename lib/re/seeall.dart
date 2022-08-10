import 'package:flutter/material.dart';

class SeeAll extends StatelessWidget {
   SeeAll({Key? key,required this.language}) : super(key: key);
  final String language;
  @override
  Widget build(BuildContext context) {
    return   Container(
      color: Colors.black,
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 22),
            child: Text(
              language,
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left:200),
            child: Text(
              'See all',
              style: TextStyle(color: Colors.white, fontSize: 16),
            ),
          ),
        ],
      ),

    );
  }
}
