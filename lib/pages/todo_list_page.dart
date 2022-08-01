import 'package:flutter/material.dart';

class TodoListPage extends StatelessWidget {
  TodoListPage({Key? key}) : super(key: key);

  final TextEditingController emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: EdgeInsets.all(16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextField(
                controller: emailController,
                onChanged: onChanged,
                onSubmitted: onSubmited,
                decoration: const InputDecoration(
                  labelText: "E-mail",
                ),
              ),
               ElevatedButton(
                onPressed: login,
                child: const Text("Entrar"),
              )
            ],
          ),
        ),
      ),
    );
  }

  void login(){
    String text = emailController.text;
    print(text);
    emailController.clear();
  }

  void onChanged(String text){
    //print(text);
  }

  void onSubmited(String text){
    print(text);
  }
}
