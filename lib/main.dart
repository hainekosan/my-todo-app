import 'package:flutter/material.dart';
import 'package:flutter_app/samples/index.dart';
import 'package:flutter_app/samples/random_words.dart';
import 'package:flutter_app/samples/screen_transition.dart';
import 'package:flutter_app/samples/todo_list_page.dart';

void main() => runApp(MyTodoApp());

class MyTodoApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter',
      theme: ThemeData(primaryColor: Colors.yellow),
      routes: <String, WidgetBuilder>{
        '/': (BuildContext context) => IndexPage(),
        '/random_words': (BuildContext context) => RandomWords(),
        '/todo_list_page': (BuildContext context) => TodoListPage(),
        '/screen_transition': (BuildContext context) => ScreenTransition(),
        '/screen_transition2': (BuildContext context) => ScreenTransition2(''),
      },
    );
  }
}
