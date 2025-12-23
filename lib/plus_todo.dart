import 'package:flutter/material.dart';
import 'package:tasks/todo_entity.dart';

class Plustodo extends StatefulWidget {
  const Plustodo({super.key, required this.onCreate});

  final void Function(TodoEntity) onCreate;

  @override
  State<Plustodo> createState() => _PlustodoState();
}

class _PlustodoState extends State<Plustodo> {
  bool isFavorite = false;

  TextEditingController controller = TextEditingController(); // ??
  void saveTodo() {
    widget.onCreate(
      TodoEntity(
        title: controller.text,
        description: '설명',
        isFavorite: false,
        isDone: false,
      ),
    );
    Navigator.of(context).pop(); // 쌓인 걸 나가준다.
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
        left: 20,
        right: 20,
        top: 20,
        bottom:
            MediaQuery.of(context).viewInsets.bottom + 5, //바텀시트가 키보드 위로 잡히도록
      ), // 0을 넣어야 하나?
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          TextField(
            // 텍스트 필드
            controller: controller,
            style: TextStyle(fontSize: 15),
            autofocus: true, // 별도의 클릭없이 즉시 해당입력창에 포커스를 주고 키보드를 활성화
            maxLines: 1, // 개행이 안되게
            onSubmitted: (value) {
              // 엔터나 완료를 눌러도 출력되게 만들어줌
              saveTodo();
            },

            decoration: InputDecoration(hintText: "새 할일"),
          ),
          Row(
            children: [
              /// 설명 Icon을 눌렀을 때 description용 TextField 보이게 하기
              IconButton(
                onPressed: () {
                  //함수를 호출해서 새로운 TextField 만들기: 어떻게?
                },
                icon: Icon(Icons.short_text_rounded, size: 24),
              ),
              Icon(
                isFavorite ? Icons.star : Icons.star_border, // isFavorite
                size: 24,
              ), // 삼항연산자
              Spacer(),
              // 텍스트를 텍스트버튼으로 만들어서 '저장'을 누르면 저장되게 함
              TextButton(
                onPressed: () {
                  // onCreate();
                  saveTodo();
                },
                child: Text('저장', style: TextStyle(color: Colors.grey)),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
