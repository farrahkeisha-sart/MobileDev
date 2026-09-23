import 'package:flutter/material.dart';


class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController usernameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  String statuslogin = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('My Login Page')),
      body : Column(
       children: [ 
          Container(
            margin: EdgeInsets.all(10),
            child: 
            TextField(
              controller: usernameController,
              decoration: InputDecoration(hint: Text("Input username")),
            ),
          )
          ,
          Container(
            margin: EdgeInsets.all(10),
            child:
          TextField(
              obscureText: true,
              decoration: InputDecoration(hint: Text("Input password"))),
            ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(onPressed: () {
                setState(() {
                  String username = usernameController.text.toString();
                  String password = passwordController.text.toString();
                  if(username == "admin" && password == "admin"){
                    statuslogin = "Sukses Login";
                  } else {
                    statuslogin = "Gagal Login";
                  }
                });
              }, child: Text("Login", style: TextStyle(fontSize: 20, color: const Color.fromARGB(255, 186, 198, 234),fontWeight: FontWeight.bold)),),
              ElevatedButton(onPressed: () {}, child: Text("Register", style: TextStyle(fontSize: 20, color: const Color.fromARGB(255, 186, 198, 234)),)),
            ],
          ),
          Text("status login : "+ statuslogin, style: TextStyle(fontSize: 20, color: const Color.fromARGB(255, 186, 198, 234)),)
        ],
      ),
      
    );
  }
}