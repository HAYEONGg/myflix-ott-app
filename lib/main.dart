import 'package:flutter/material.dart';
import 'package:netflix_cover/widget/bottom_bar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // TabController controller;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'NetFilx',
      theme: ThemeData(
        brightness: Brightness.dark,
        colorScheme: ColorScheme.dark(
          primary: Colors.black,
          secondary: Colors.white,
        ),
      ),
      home: DefaultTabController(
          length: 4,
          child: Scaffold(
            body: TabBarView(
              physics: NeverScrollableScrollPhysics(),
              children: <Widget>[
                Container(
                  child: Center(
                    child: Text('home'),
                  ),
                ),
                Container(
                  child: Center(
                    child: Text('home'),
                  ),
                ),
                Container(
                  child: Center(
                    child: Text('home'),
                  ),
                ),
                Container(
                  child: Center(
                    child: Text('home'),
                  ),
                ),
              ],
            ),
            bottomNavigationBar: BottomBar(),
          )),
    );
  }
}
