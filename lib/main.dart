import 'dart:async';

import 'package:flutter/material.dart';
import 'package:listen_to_wikipedia/hatnote_api/hatnote_api.dart';
import 'package:listen_to_wikipedia/models/language.dart';
import 'package:listen_to_wikipedia/models/wikipedia_action.dart';

late StreamSubscription<WikipediaAction> sub;

void main() {
  final api = HatnoteApi();
  sub = api
      .actionsStream(language: Language.byCode('en')!)
      .listen((a) => print(a.toJson()));
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(body: Center(child: Text('Hello World!'))),
    );
  }
}
