import 'package:flutter/material.dart';
import 'package:tasks/not_todo.dart';
import 'package:tasks/plus_todo.dart';
import 'package:tasks/to_do_widgets.dart';
import 'package:tasks/todo_entity.dart';
import 'package:tasks/todo_view.dart';

/// #### appBar
///     - title
///         - Text
///
///
///     #### body
///     - Column
///         - ContainerBox
///             - Column
///                 - Image
///                 - Text
///                 - Text
///         - Icon
///
///
///     #### bottom

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final String appName = '동준`s Tasks';
  List<TodoEntity> todoList = [];

  void addTodo(TodoEntity todo) {
    setState(() {
      todoList.add(todo);
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus(); //  빈 화면 누르면 키보드 닫히게, 이거 없어도 왜 닫히나?
      },
      child: Scaffold(
        floatingActionButton: FloatingActionButton(
          //
          shape: CircleBorder(),
          onPressed: () {
            showModalBottomSheet(
              //
              context: context,
              builder: (context) {
                return Plustodo(onCreate: addTodo); // 바텀시트와 연결
              },
            );
          }, //
          backgroundColor: Colors.lightGreen,
          foregroundColor: Colors.white,
          child: Icon(
            Icons.add,
            size: 24,
          ), // 왜 마지막으로 오게해야? -> 차일드의 차일드 계속 이어질 수 있어 혼잡방지
        ),

        backgroundColor: Colors.grey.shade400, // Scaffold에서 배경색 지정
        appBar: AppBar(
          title: Text(
            appName,
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
        ),
        body: Column(
          // 리스트뷰 사용
          children: [
            // 컨테이너 만들고 속성 주기
            todoList.isEmpty
                ? NotTodo(appName: appName)
                // ToDo 추가된 화면 만들기
                : TodoView(todoList: todoList),
          ],
        ),
      ),
    );
  }
}
