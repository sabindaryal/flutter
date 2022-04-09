import 'package:demoapp/pages/ideatstore.dart';
import 'package:demoapp/pages/signup.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 15),
          child: Column(
            children: [
              const SizedBox(
                height: 150,
              ),
              const Text(
                "Login",
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 50,
              ),
              Container(
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 210, 214, 233),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  height: 50,
                  child: const TextField(
                    decoration: InputDecoration(
                        contentPadding: EdgeInsets.all(11),
                        prefixIcon: Icon(
                          Icons.person,
                          color: Color.fromARGB(255, 24, 24, 24),
                        ),
                        border: InputBorder.none,
                        hintText: "Username"),
                  )),
              const SizedBox(
                height: 20,
              ),
              Container(
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 210, 214, 233),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  height: 50,
                  child: const TextField(
                    decoration: InputDecoration(
                        contentPadding: EdgeInsets.all(11),
                        prefixIcon: Icon(
                          Icons.lock,
                          color: Color.fromARGB(255, 0, 0, 0),
                        ),
                        border: InputBorder.none,
                        hintText: "Password"),
                  )),
              Row(
                children: const [
                  Checkbox(value: true, onChanged: null),
                  Text("Remember me"),
                ],
              ),
              InkWell(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: ((context) {
                    return const IdeateStore();
                  })));
                },
                child: Container(
                  height: 47,
                  width: 250,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: const Color.fromARGB(255, 208, 61, 61),
                  ),
                  child: const Center(
                      child: Text(
                    "Login",
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold),
                  )),
                ),
              ),
              const SizedBox(height: 10),
              const Text("Forget Password"),
              const SizedBox(
                height: 100,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text("Not a member?"),
                  InkWell(
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: ((context) {
                          return const SignupPage();
                        })));
                      },
                      child: const Text(" Signup now",
                          style: TextStyle(color: Colors.blue)))
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
