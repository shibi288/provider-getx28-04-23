import 'package:flutter/material.dart';


class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  var chechvalue=false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("WELCOME"),
      ),
      body: Column(
        children: [
          Padding(padding: EdgeInsets.all(100)),
          TextField(
            textDirection:TextDirection.ltr,
        decoration: InputDecoration(
            prefix: Icon(Icons.email),

            border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20)),
            label: Text("Email"),
            hintText: "Enter Email"),
      ),
          TextField(
            textDirection:TextDirection.ltr,
            decoration: InputDecoration(
                prefix: Icon(Icons.password),
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20)),
                label: Text("Password"),
                hintText: "Enter Password"),
          ),
          ElevatedButton(onPressed: () {

          }, child:Text("Login"),
          ),
          Checkbox(
            activeColor: Colors.black,
            checkColor: Colors.blue,
            hoverColor: Colors.cyan,

            value: chechvalue, onChanged: (value) {
              setState(() {
                chechvalue=!chechvalue;
              });
              },)


        ],
      ),
    );
  }
}



