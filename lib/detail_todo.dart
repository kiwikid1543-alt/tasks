import 'package:flutter/material.dart';

class DetailTodo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade400,
      appBar: AppBar(
        leading: IconButton(onPressed: () {}, icon: Icon(Icons.arrow_back)),
        actions: [IconButton(onPressed: () {}, icon: Icon(Icons.star))],
      ),
      body: Column(
        children: [
          Text(
            "새로운 할일 1",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          Row(
            children: [
              IconButton(onPressed: () {}, icon: Icon(Icons.details_outlined)),
              Column(
                children: [Text('세부 내용은 다음과 같습니다.'), Text('세부 내용은 다음과 같습니다.')],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
