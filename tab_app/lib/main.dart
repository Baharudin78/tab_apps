import 'package:flutter/material.dart';
import './home.dart' as beranda;
import './inbox.dart'as pesan;
import './feed.dart' as news;
import './order.dart' as pesanan;
import './profile.dart'as akun;

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> with SingleTickerProviderStateMixin {
  TabController controller;

@override
  void initState() {
    controller =TabController(vsync: this,length: 5);
    super.initState();
  }
  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("toko Online"),
          backgroundColor: Colors.greenAccent,
          bottom: new TabBar(
            controller: controller,
            tabs: <Widget>[
              new Tab(icon: Icon(Icons.home),),
              new Tab(icon: Icon(Icons.shopping_basket),),
              new Tab(icon: Icon(Icons.rss_feed),),
              new Tab(icon: Icon(Icons.inbox),),
              new Tab(icon: Icon(Icons.account_circle),)
            ],
          ),
        ),
        body: TabBarView(
          controller: controller,
          children: <Widget>[
            new beranda.Home(),
            new pesan.Inbox(),
            new news.Feed(),
            new pesanan.Order(),
            new akun.Profile()
          ],
        ),
        bottomNavigationBar: new Material(
          color: Colors.greenAccent,
          child: new TabBar(
            controller: controller,
            tabs: <Widget>[
              new Tab(icon: Icon(Icons.home),),
              new Tab(icon: Icon(Icons.shopping_basket),),
              new Tab(icon: Icon(Icons.rss_feed),),
              new Tab(icon: Icon(Icons.inbox),),
              new Tab(icon: Icon(Icons.account_circle),)
            ],
          ), 
        ),
      ),
    );
  }
}
