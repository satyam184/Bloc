import 'package:bloc_todo/bloc/todo_bloc.dart';
import 'package:bloc_todo/model/todo_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class TodoList extends StatelessWidget {
  const TodoList({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pushNamed(context, '/add_todo');
        },
        tooltip: 'Add Todo',
        child: Icon(Icons.add),
      ),
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            pinned: true,
            expandedHeight: 100,
            flexibleSpace: FlexibleSpaceBar(
              title: Text('To-Do', style: TextStyle(color: Colors.white)),
              background: Container(color: Colors.deepPurple.shade400),
            ),
          ),
          BlocBuilder<TodoBloc, List<TodoModel>>(
            builder: (context, todos) {
              return SliverList(
                delegate: SliverChildBuilderDelegate(childCount: todos.length, (
                  context,
                  index,
                ) {
                  final todo = todos[index];
                  return Card(
                    margin: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                    child: ListTile(
                      leading: Icon(Icons.check_circle_outline),
                      title: Text(todo.text.toString()),
                    ),
                  );
                }),
              );
            },
          ),
        ],
      ),
    );
  }
}
