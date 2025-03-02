import 'package:bloc_todo/model/todo_model.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AddTodo {
  final String text;
  AddTodo(this.text);
}

class TodoBloc extends Bloc<AddTodo, List<TodoModel>> {
  TodoBloc() : super([
    TodoModel(id: '01', text: 'Exam'),
    TodoModel(id: '02', text: 'Morning Exercise'),
    TodoModel(id: '03', text: 'Buy Groceries'),
    TodoModel(id: '04', text: 'Complete Flutter Project'),
    TodoModel(id: '05', text: 'Reply to Emails'),
  ]) {
    on<AddTodo>((event, emit) {
      final todo = TodoModel(
        id: DateTime.now().millisecondsSinceEpoch.toString(),
        text: event.text,
      );
      emit([...state, todo]);
    });
  }
}
