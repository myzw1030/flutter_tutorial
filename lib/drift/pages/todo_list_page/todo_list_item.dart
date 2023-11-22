import 'package:flutter/material.dart';
import 'package:flutter_tutorial/drift/model/todos.dart';

class TodoListItem extends StatelessWidget {
  const TodoListItem({
    super.key,
    required this.todos,
  });

  final Todo todos;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(
            color: Colors.grey.shade500,
          ),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'タイトル：${todos.title}',
          ),
          Text(
            todos.content,
            style: const TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 4),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                '作成日：${todos.createDate}',
                style: TextStyle(
                  color: Colors.grey.shade700,
                ),
              ),
              Text(
                '期日：${todos.deadline}',
                style: TextStyle(
                  color: Colors.amber.shade800,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
