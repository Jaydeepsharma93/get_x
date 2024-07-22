import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../nevigate or theme change/controller/themechange.dart';
import '../controller/addTodo.dart';

class TodoView extends StatelessWidget {
  final AddTodo addTodo = Get.find();
  final ThemeChange themeChange = Get.find();
  final TextEditingController textEditingController = TextEditingController();

  TodoView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 80,
        elevation: 20,
        title: Text('Todo App'),
        centerTitle: true,
        actions: [
          Obx(
            () => Switch(
              value: themeChange.isDark.value,
              onChanged: (value) {
                themeChange.changeTheme(value);
              },
            ),
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          children: [
            SizedBox(height: 10),
            Expanded(
              child: Obx(() {
                return ListView.builder(
                  itemCount: addTodo.todoList.length,
                  itemBuilder: (context, index) {
                    var todo = addTodo.todoList[index];
                    return Card(
                      child: ListTile(
                        leading: Checkbox(
                          value: todo.isDone,
                          onChanged: (value) {
                            addTodo.thanTodoDone(value, index);
                          },
                        ),
                        title: Text(
                          todo.task.toString(),
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.w600),
                        ),
                        trailing: IconButton(
                            onPressed: () {
                              addTodo.deleteTodo(index);
                            },
                            icon: Icon(Icons.delete)),
                        onTap: () {
                          textEditingController.text = todo.task!;
                          showDialog(
                            context: context,
                            builder: (context) {
                              return AlertDialog(
                                title: Text('Update TODO'),
                                content: TextField(
                                  controller: textEditingController,
                                ),
                                actions: [
                                  TextButton(
                                    onPressed: () {
                                      addTodo.updateTodo(
                                          index, textEditingController.text);
                                      Navigator.of(context).pop();
                                    },
                                    child: Text('Update'),
                                  ),
                                ],
                              );
                            },
                          );
                        },
                        onLongPress: () {
                          addTodo.deleteTodo(index);
                        },
                      ),
                    );
                  },
                );
              }),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showDialog(
            context: context,
            builder: (context) {
              return AlertDialog(
                title: Text('Add TODO'),
                content: TextField(
                  controller: textEditingController,
                  decoration: InputDecoration(
                    hintText: 'Enter TODO task',
                  ),
                ),
                actions: [
                  TextButton(
                    onPressed: () {
                      var text = textEditingController.text;
                      if (text.isNotEmpty) {
                        addTodo.addTodo(text);
                        textEditingController.clear();
                      }
                      Navigator.of(context).pop();
                    },
                    child: Text('Add'),
                  ),
                ],
              );
            },
          );
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
