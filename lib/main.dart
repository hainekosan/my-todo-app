import 'package:flutter/material.dart';
import 'package:flutter_app/random_words.dart';

void main() => runApp(MyTodoApp());

class MyTodoApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Welcom to Flutter',
      home: RandomWords(),
      // debugShowCheckedModeBanner: false,
      // title: 'My Todo App',
      // theme: ThemeData(
      //   primarySwatch: Colors.blue,
      //   visualDensity: VisualDensity.adaptivePlatformDensity,
      // ),
      // home: TodoListPage(),
    );
  }
}
