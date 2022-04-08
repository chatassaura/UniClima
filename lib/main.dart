import 'package:flutter/material.dart';
import 'package:uni_clima/screens/home.dart';
import 'package:uni_clima/themes/light_theme.dart';
import 'package:uni_clima/themes/dark_theme.dart';

void main(){
  runApp(const UniClima());
}

class UniClima extends StatelessWidget {
  const UniClima({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const Home(),
      debugShowCheckedModeBanner: false,
      title: "UniClima",
      themeMode: ThemeMode.system,
      theme: lightTheme(),
      darkTheme: darkTheme(),
    );
  }
}