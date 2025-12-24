import 'package:flutter/material.dart';
import 'package:tasks/todo_entity.dart';

class DetailTodo extends StatefulWidget {
  const DetailTodo({
    super.key,
    required this.todoList,
    required this.index,
    required this.onToggleFavorite,
  });
  final List<TodoEntity> todoList;
  final int index;
  final VoidCallback onToggleFavorite;
  @override
  State<DetailTodo> createState() => _DetailTodoState();
}

class _DetailTodoState extends State<DetailTodo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade400,
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: Icon(Icons.arrow_back),
        ),
        actions: [
          IconButton(
            onPressed: () {
              widget.onToggleFavorite();
              setState(() {});
            },
            icon: widget.todoList[widget.index].isFavorite
                ? Icon(Icons.star)
                : Icon(Icons.star_border),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,

          children: [
            Text(
              "${widget.todoList[widget.index].title}",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            Row(
              children: [
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.short_text_rounded),
                ),
                Column(
                  children: [
                    Text("${widget.todoList[widget.index].description}"),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
