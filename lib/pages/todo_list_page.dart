import 'package:flutter/material.dart';
import 'package:todo_list/widgets/tasks_list_item.dart';

class TodoListPage extends StatefulWidget {
  TodoListPage({Key? key}) : super(key: key);

  @override
  State<TodoListPage> createState() => _TodoListPageState();
}

class _TodoListPageState extends State<TodoListPage> {
  List<String> tasks = [];

  final TextEditingController todoController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  children: [
                    Expanded(
                      child: TextField(
                        controller: todoController,
                        decoration: const InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: "Adicione uma tarefa",
                          hintText: "Estudar Flutter",
                        ),
                      ),
                    ),
                    SizedBox(width: 8),
                    ElevatedButton(
                      onPressed: () {
                        String text = todoController.text;
                        setState(() {
                          tasks.add(text);
                        });
                      },
                      style: ElevatedButton.styleFrom(
                        //primary: Colors.cyan,
                        primary: const Color(0xff00d7f3),
                        //fixedSize: Size(100, 200),
                        padding: const EdgeInsets.all(15),
                      ),
                      child: const Icon(
                        Icons.add,
                        size: 30,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 8),
                Flexible(
                  child: ListView(
                    shrinkWrap: true,
                    children: [
                      for (String task in tasks)
                        TodoListItem(
                          title: task,
                        ),
                    ],
                  ),
                ),
                SizedBox(height: 8),
                Row(
                  children: [
                    Expanded(
                      child: const Text("Voê possui 0 tarefas pendentes"),
                    ),
                    SizedBox(width: 8),
                    ElevatedButton(onPressed: () {}, child: Text("Limpar Tudo"))
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
