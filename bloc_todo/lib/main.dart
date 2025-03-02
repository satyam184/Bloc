import 'package:bloc_todo/bloc/todo_bloc.dart';
import 'package:bloc_todo/screen/add_todo_page.dart';
import 'package:bloc_todo/screen/todo_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [BlocProvider(create: (_) => TodoBloc())],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        routes: {'/': (_) => TodoList(), '/add_todo': (_) => AddTodoPage()},
      ),
    );
  }
}
