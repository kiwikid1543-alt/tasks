import 'package:flutter/material.dart';

class TodoEntity extends StatelessWidget {
  TodoEntity({
    required this.title,
    required this.description,
    required this.isFavorite,
    required this.isDone,
  });
  final String? title;
  final String? description;
  bool isFavorite;
  bool isDone;

  @override
  Widget build(BuildContext context) {
    return Text('TodoEntity');
  }
}
