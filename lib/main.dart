import 'package:flutter/material.dart';
import 'package:shoping_app/screens/home.dart';

void main() => runApp(EcommerceApp());

class EcommerceApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        dividerColor: const Color(0xFFECEDF1),
        brightness: Brightness.light,
        backgroundColor: Colors.white,
        primaryColor: const Color(0xFFF93963),
        hintColor: Colors.cyan[600],
        fontFamily: 'Montserrat',
        textTheme: const TextTheme(
          headline3: TextStyle(fontSize: 72.0, fontWeight: FontWeight.bold),
          subtitle1: TextStyle(fontSize: 22.0, fontWeight: FontWeight.bold),
          subtitle2: TextStyle(fontSize: 16),
          bodyText1: TextStyle(fontSize: 14.0, fontFamily: 'Montserrat'),
          headline4: TextStyle(
              fontSize: 14.0, fontFamily: 'Montserrat1', color: Colors.white),
          headline5: TextStyle(
              fontSize: 14.0, fontFamily: 'Montserrat', color: Colors.black54),
        ),
      ),
      debugShowCheckedModeBanner: false,
      title: 'Ecommerce UI Kit',
      home: Home(),
    );
  }
}

class TabLayoutDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      color: Colors.yellow,
      home: DefaultTabController(
        length: 4,
        child: Scaffold(
          body: TabBarView(
            children: [
              Container(
                color: Colors.yellow,
              ),
              Container(
                color: Colors.orange,
              ),
              Container(
                color: Colors.lightGreen,
              ),
              Container(
                color: Colors.red,
              ),
            ],
          ),
          bottomNavigationBar: const TabBar(
            tabs: [
              Tab(
                icon: Icon(Icons.home),
              ),
              Tab(
                icon: Icon(Icons.rss_feed),
              ),
              Tab(
                icon: Icon(Icons.perm_identity),
              ),
              Tab(
                icon: Icon(Icons.settings),
              )
            ],
            labelColor: Colors.yellow,
            unselectedLabelColor: Colors.blue,
            indicatorSize: TabBarIndicatorSize.label,
            indicatorPadding: EdgeInsets.all(7.0),
            indicatorColor: Colors.red,
          ),
          backgroundColor: Colors.black,
        ),
      ),
    );
  }
}
