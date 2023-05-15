import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoapp/homescreen.dart';
import 'package:todoapp/todo_provider.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
        create: ((context)=>Todoprovider()),
    child: MaterialApp(
      home: MyHomePage(),
    ),);
  }
}
