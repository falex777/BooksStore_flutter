import 'package:flutter/material.dart';
import 'package:my_first_app/bookinfo.dart';
import 'package:my_first_app/booklist.dart';
import 'package:my_first_app/theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Книжный магазин',
      theme: DarkTheme,
      routes: {
        '/': (context) => BooksList(title: 'Книжный магазин'),
        '/info': (context) => BookInfo(title: 'Информация о книге'),
      },
    );
  }
}




