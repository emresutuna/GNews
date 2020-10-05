import 'package:flutter/material.dart';
import 'package:global_news_app/Screens/main_page.dart';

void main() {
  runApp(MyApp());
}

Color cardColor1 = HexColor("de4463");
Color cardColor2 = HexColor("654062");
Color cardColor3 = HexColor("fca652");
Color backgroundColor = HexColor("e7e7de");

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'News App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      debugShowCheckedModeBanner: false,
      home: MainPage(),
    );
  }
}

class HexColor extends Color {
  static int _getColorFromHex(String hexColor) {
    hexColor = hexColor.toUpperCase().replaceAll("#", "");
    if (hexColor.length == 6) {
      hexColor = "FF" + hexColor;
    }
    return int.parse(hexColor, radix: 16);
  }

  HexColor(final String hexColor) : super(_getColorFromHex(hexColor));
}
