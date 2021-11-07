import 'package:first_flutter_appication/widget/bottom_bar.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  late TabController controller;
  final ThemeData theme = ThemeData();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Bigdeal Sample Netflix',
      theme: theme.copyWith(
        colorScheme: theme.colorScheme.copyWith(
          primary: Colors.black,
          secondary: Colors.white,
          brightness: Brightness.dark,
        ),
      ),
      home: DefaultTabController(
        length: 4,
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
    );
  }
}
