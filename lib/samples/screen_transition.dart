import 'package:flutter/material.dart';

class ScreenTransition extends StatefulWidget {
  @override
  _ScreenTransitionState createState() => _ScreenTransitionState();
}

class _ScreenTransitionState extends State<ScreenTransition> {
  String name = ''; // 入力値保持用

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('ページ1')),
        body: Center(
            child: ListView(children: [
          // 入力項目
          TextField(
            onChanged: (text) {
              this.name = text;
            },
            decoration:
                InputDecoration(labelText: '名前', border: OutlineInputBorder()),
          ),

          // ボタン表示
          RaisedButton(
            child: Text('次ページへ移動'),
            onPressed: () {
              Navigator.push(
                context,
                new MaterialPageRoute<Null>(
                  settings: const RouteSettings(name: "ScreenTransition2"),
                  builder: (BuildContext context) =>
                      ScreenTransition2(this.name),
                ),
              );
            },
          )
        ])));
  }
}

/**
 * ページ2
 */
class ScreenTransition2 extends StatelessWidget {
  String name = ''; // ページ1の入力値保持用

  ScreenTransition2(String name) {
    this.name = name;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('ページ2')),
        body: Center(
          child: ListView(
            children: <Widget>[
              Text('名前：' + this.name),
              RaisedButton(
                  child: Text('前ページへ戻る'),
                  onPressed: () {
                    Navigator.pop(context);
                  }),
            ],
          ),
        ));
  }
}
