import 'package:first_flutter_appication/widget/bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  late TabController controller;
  final ThemeData theme = ThemeData(
    brightness: Brightness.dark,
    primaryColor: Colors.black,
  );

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle.dark.copyWith(
        statusBarColor: Colors.white,
        statusBarBrightness: Brightness.dark,
      ),
    );

    return MaterialApp(
      title: 'Bigdeal Sample Netflix',
      theme: theme,
      home: DefaultTabController(
        length: 4,
        child: SafeArea(
          child: Scaffold(
            body: const TabBarView(
              physics: NeverScrollableScrollPhysics(),
              children: <Widget>[
                Center(
                  child: Text('Hello This is Home Page.'),
                ),
                Center(
                  child: Text('Hello This is Search Page.'),
                ),
                Center(
                  child: Text('Hello This is Download Page.'),
                ),
                Center(
                  child: Text('Hello This is More Page.'),
                ),
              ],
            ),
            bottomNavigationBar: BottomBar(),
          ),
        ),
      ),
    );
  }
}
