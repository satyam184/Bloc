import 'package:bloc_todo/bloc/todo_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AddTodoPage extends StatelessWidget {
  const AddTodoPage({super.key});

  @override
  Widget build(BuildContext context) {
    final todobloc = BlocProvider.of<TodoBloc>(context);
    final TextEditingController text = TextEditingController();
    return Scaffold(
      appBar: AppBar(
        title: Text('Add To-Do', style: TextStyle(color: Colors.white)),
        backgroundColor: Colors.blue,
        iconTheme: IconThemeData(color: Colors.white)
      ),
      body: Center(
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              child: TextField(
                controller: text,
                decoration: InputDecoration(hintText: 'Add'),
              ),
            ),
            ElevatedButton(onPressed: () {
              todobloc.add(AddTodo(text.text));
              text.clear();
              Navigator.pop(context);
            }, child: Icon(Icons.add)),
          ],
        ),
      ),
    );
  }
}
