import 'package:demoapp/pages/loginpage.dart';
import 'package:flutter/material.dart';

class SignupPage extends StatefulWidget {
  const SignupPage({Key? key}) : super(key: key);

  @override
  State<SignupPage> createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 15),
          child: Center(
            child: Column(
              children: [
                const SizedBox(
                  height: 50,
                ),
                Text(
                  "Signup",
                  style: TextStyle(fontSize: 30),
                ),
                const SizedBox(
                  height: 50,
                ),
                Container(
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 210, 214, 233),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  height: 45,
                  child: const TextField(
                    decoration: InputDecoration(
                        contentPadding: EdgeInsets.all(11),
                        prefixIcon: Icon(
                          Icons.person,
                          color: Color.fromARGB(255, 0, 0, 0),
                        ),
                        border: InputBorder.none,
                        hintText: "Username"),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 210, 214, 233),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  height: 45,
                  child: const TextField(
                    decoration: InputDecoration(
                        contentPadding: EdgeInsets.all(11),
                        prefixIcon: Icon(
                          Icons.lock,
                          color: Color.fromARGB(255, 0, 0, 0),
                        ),
                        border: InputBorder.none,
                        hintText: "Password"),
                  ),
                ),
                const SizedBox(height: 20),
                Container(
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 210, 214, 233),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  height: 45,
                  child: const TextField(
                    decoration: InputDecoration(
                        contentPadding: EdgeInsets.all(11),
                        prefixIcon: Icon(
                          Icons.mail,
                          color: Color.fromARGB(255, 0, 0, 0),
                        ),
                        border: InputBorder.none,
                        hintText: "Email"),
                  ),
                ),
                const SizedBox(height: 20),
                Container(
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 210, 214, 233),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  height: 45,
                  child: const TextField(
                    decoration: InputDecoration(
                        contentPadding: EdgeInsets.all(11),
                        prefixIcon: Icon(
                          Icons.phone,
                          color: Color.fromARGB(255, 0, 0, 0),
                        ),
                        border: InputBorder.none,
                        hintText: "Phone Number"),
                  ),
                ),
                const SizedBox(height: 20),
                Container(
                  height: 40,
                  width: 250,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.black),
                  child: const Center(
                      child: Text(
                    "Signup",
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold),
                  )),
                ),
                const SizedBox(height: 40),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Already have account"),
                    const SizedBox(height: 40),
                    InkWell(
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: ((context) {
                          return const LoginPage();
                        })));
                      },
                      child: Text(
                        " Login",
                        style: TextStyle(color: Colors.blue),
                      ),
                    )
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
