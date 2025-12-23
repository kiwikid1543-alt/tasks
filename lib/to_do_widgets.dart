import 'package:flutter/material.dart';
import 'package:tasks/todo_entity.dart';

class ToDoWidgets extends StatelessWidget {
  ToDoWidgets({super.key, required this.todo}); // const 빼야하나?

  final TodoEntity todo;

  @override
  Widget build(BuildContext context) {
    return Container(
      // 2번째 체크박스
      margin: EdgeInsets.symmetric(vertical: 8, horizontal: 20),
      padding: EdgeInsets.symmetric(
        vertical: 20,
        horizontal: 20,
      ), // 패딩 수평 16(과제조건)

      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: Colors.grey.shade300,
      ),
      child: Row(
        children: [
          // 아이콘과 텍스트 가로로 배치되어 있음
          Container(
            //체크하는 동그라미
            width: 24,
            height: 24,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(color: Colors.black, width: 2),

              color: todo.isDone ? Colors.black : null, //삼항연산자
            ),
            child: todo.isDone
                ? Icon(Icons.check, color: Colors.grey.shade300, size: 20)
                : null,
          ),
          SizedBox(width: 20),
          Expanded(
            child: Text(todo.title ?? '-'),
          ), // 글자 안넘치게 방지하기 위해 expanded 사용
          GestureDetector(onTap: () {}, child: Icon(Icons.star_border)),
        ],
      ),
    );
  }
}
