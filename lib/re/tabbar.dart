import 'package:flutter/material.dart';
import 'package:mymovie/home/poster.dart';

class Tabbarm extends StatelessWidget {
  Tabbarm({Key? key, required this.subject}) : super(key: key);
  final String subject;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 4,
        child: Scaffold(
          backgroundColor: Colors.black,
          appBar: AppBar(
            backgroundColor: Colors.black,
            title: TabBar(
              tabs: [
                Padding(
                  padding: const EdgeInsets.only(right: 30),
                  child: Tab(
                      icon: Icon(
                    Icons.search,
                    color: Colors.white,
                  )),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 10),
                  child: Tab(
                    text: ("Movies"),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 0),
                  child: Tab(
                    text: ("TV Shows"),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 0),
                  child: Tab(
                    text: (subject),
                  ),
                ),
              ],
            ),
          ),
          body: TabBarView(
            children: [
              TextField(
                decoration: InputDecoration(
                  hintText: 'search',
                  filled: true,
                  fillColor: Colors.white,
                  border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.circular(50)),
                ),
              ),
              Poster(),
              Poster(),
              Poster(),
            ],
          ),
        ),
      ),
    );
  }
}
