import 'package:flutter/material.dart';
import 'package:gadget_shop_ui/pages/dashboard;page.dart';
import 'package:gadget_shop_ui/pages/home.page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'ainix gadget ui',
      //home: const HomePage(),
      routes: {
        '/': (context) => const HomePage(),
        '/dash': (context) => Dashboard(),
      },
    );
  }
}
