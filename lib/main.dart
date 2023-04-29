import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_todo/home/home_view.dart';
import 'package:provider_todo/model/tasks.dart';

void main() {
  runApp(const Todoey());
}

class Todoey extends StatelessWidget {
  const Todoey({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [ChangeNotifierProvider(create: (_) => TasksData())],
      child: MaterialApp(
        home: TasksScreen(),
      ),
    );
  }
}
