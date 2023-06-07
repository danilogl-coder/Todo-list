import 'dart:convert';

import 'package:shared_preferences/shared_preferences.dart';

import '../models/todo.dart';
const todoListKey = 'todo_list';
class TodoRepository 
{
  
  late SharedPreferences sharedPreferences;

  Future<void> getTodoList() async
  {
  sharedPreferences = await SharedPreferences.getInstance();
  final String jsonString = sharedPreferences.getString(todoListKey) ?? '[]';
  final List jsonDecoded = json.decode(jsonString) as List;
  jsonDecoded.map((e) => Todo());
  }

  void saveTodoList(List<Todo>todos)
  {
  final String jsonString = json.encode(todos);
  sharedPreferences.setString(todoListKey, jsonString);
  }
}