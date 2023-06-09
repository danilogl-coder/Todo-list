import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import '../models/todo.dart';

class TodoListItem extends StatelessWidget {
const TodoListItem({super.key, required this.onDelete, required this.todo});

  final Todo todo;
  final Function(Todo) onDelete;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 2),
      child: Slidable(
          startActionPane: ActionPane(motion: DrawerMotion(), extentRatio: 0.2, children: [
            SlidableAction
            (
              onPressed: (a){ onDelete(todo);},
              backgroundColor: Color(0xFFFE4A49),
              foregroundColor: Colors.white,
              icon: Icons.delete,
              label: 'Delete',
              
            ),
             
            
          ]),
          
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.grey[200],
            ),
           
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Text(DateFormat('dd/MM/yyyy').format(todo.dateTime),
                    style: TextStyle(fontSize: 12)),
                Text(
                  todo.title,
                  style: const TextStyle(
                      fontSize: 16, fontWeight: FontWeight.w600),
                ),
              ],
            ),
          )),
    );
  }
}

