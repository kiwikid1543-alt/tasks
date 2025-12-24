import 'package:flutter/material.dart';
import 'package:tasks/detail_todo.dart';
import 'package:tasks/to_do_widgets.dart';
import 'package:tasks/todo_entity.dart';

class TodoView extends StatelessWidget {
  const TodoView({
    super.key,
    required this.todoList,
    required this.toggleFavorite,
    required this.toggleDone,
  });

  final List<TodoEntity> todoList;
  final void Function(int) toggleFavorite;
  final void Function(int) toggleDone;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      // 컬럼에서 남은영역 차지할수있게함
      child: ListView.builder(
        //
        itemCount: todoList.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return DetailTodo(
                      todoList: todoList,
                      index: index,
                      onToggleFavorite: () {
                        toggleFavorite(index);
                      },
                    );
                  },
                ),
              );
            },
            child: ToDoWidgets(
              todo: todoList[index],
              onToggleFavorite: () {
                toggleFavorite(index);
              },
              onToggleDone: () {
                toggleDone(index);
              },
            ),
          );
        },
      ),
    );
  }
}
