import 'package:flutter/material.dart';
import 'package:mymovie/home/poster.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    int currentIndex = 0;
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
                    text: ("MY List"),
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
          bottomNavigationBar: new Theme(
    data: Theme.of(context).copyWith(
    // sets the background color of the `BottomNavigationBar`
    canvasColor: Colors.black,
    // sets the active color of the `BottomNavigationBar` if `Brightness` is light
    primaryColor: Colors.red,
    textTheme: Theme
        .of(context)
        .textTheme
        .copyWith(caption: new TextStyle(color: Colors.yellow))), // sets the inactive color of the `BottomNavigationBar`
    child:


          BottomNavigationBar(
              currentIndex: currentIndex,
             backgroundColor: Colors.red,
              items: [
                BottomNavigationBarItem(
                  icon: Icon(
                    Icons.home,
                  ),
                  label: "hgg",
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.history),
                  label: "Order history",
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.card_giftcard),
                  label: "Gift",
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.wallet_giftcard),
                  label: "Wallet",
                ),
              ],
              onTap: (index) {
                setState(() {
                  currentIndex = index;
                });
              }),
        ),
      ),
      )
    );
  }
}
