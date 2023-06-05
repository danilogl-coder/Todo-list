import 'package:flutter/material.dart';

class TodoListPage extends StatelessWidget {
   TodoListPage({super.key});

 final TextEditingController emailController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Center(
        child: Padding(
          padding: EdgeInsets.only(left: 50, right:50),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              TextField(
                controller: emailController,
                onChanged: onChanged,
                onSubmitted: onSubmitted,
                /*
                decoration: InputDecoration(
                labelText: "E-mai", 
                hintText: "Exemplo@exemplo.com",
                border: OutlineInputBorder(),
        )*/
        
        decoration: InputDecoration(
              labelText: "E-mail",
        ),
        ),
        ElevatedButton(
          onPressed: entrar, 
          child: Text('Entrar'))
            ],
          ))),
    );
  }

  void entrar()
  {
    String text = emailController.text;
    print('$text');
    emailController.text = 'Daniel';
  }

  void onChanged(String text)
  {
   //print(text);
  }

  void  onSubmitted(String text)
  {
    print(text);
  }
}