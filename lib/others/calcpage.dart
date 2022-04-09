import 'package:flutter/material.dart';

class CalcPage extends StatefulWidget {
  const CalcPage({Key? key}) : super(key: key);

  @override
  State<CalcPage> createState() => _CalcPageState();
}

class _CalcPageState extends State<CalcPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
            padding: const EdgeInsets.all(8.0),
            child: ListView(
              children: [
                SizedBox(height: 10),
                Container(
                  height: 150,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.green),
                  child: TextField(
                    decoration: InputDecoration(border: InputBorder.none),
                  ),
                ),
                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    ElevatedButton(
                      onPressed: (() {
                        print("www");
                      }),
                      child: Text("C"),
                    ),
                    ElevatedButton(
                      onPressed: (() {
                        print("f");
                      }),
                      child: Text("%"),
                    ),
                    ElevatedButton(
                      onPressed: (() {
                        print("www");
                      }),
                      child: Text("/"),
                    ),
                    ElevatedButton(
                      onPressed: (() {
                        print("www");
                      }),
                      child: Text(""),
                    ),
                  ],
                ),
                SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    ElevatedButton(
                      onPressed: (() {
                        print("www");
                      }),
                      child: Text("7"),
                    ),
                    ElevatedButton(
                      onPressed: (() {
                        print("www");
                      }),
                      child: Text("8"),
                    ),
                    ElevatedButton(
                      onPressed: (() {
                        print("www");
                      }),
                      child: Text("9"),
                    ),
                    ElevatedButton(
                      onPressed: (() {
                        print("www");
                      }),
                      child: Text(""),
                    ),
                  ],
                ),
                SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    ElevatedButton(
                      onPressed: (() {
                        print("www");
                      }),
                      child: Text("6"),
                    ),
                    ElevatedButton(
                      onPressed: (() {
                        print("www");
                      }),
                      child: Text("5"),
                    ),
                    ElevatedButton(
                      onPressed: (() {
                        print("www");
                      }),
                      child: Text("4"),
                    ),
                    ElevatedButton(
                      onPressed: (() {
                        print("www");
                      }),
                      child: Text("-"),
                    ),
                  ],
                ),
                SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    ElevatedButton(
                      onPressed: (() {
                        print("www");
                      }),
                      child: Text("3"),
                    ),
                    ElevatedButton(
                      onPressed: (() {
                        print("www");
                      }),
                      child: Text("2"),
                    ),
                    ElevatedButton(
                      onPressed: (() {
                        print("www");
                      }),
                      child: Text("1"),
                    ),
                    ElevatedButton(
                      onPressed: (() {
                        print("www");
                      }),
                      child: Text("+"),
                    ),
                  ],
                ),
                SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    ElevatedButton(
                      onPressed: (() {
                        print("www");
                      }),
                      child: Icon(Icons.arrow_back),
                    ),
                    ElevatedButton(
                      onPressed: (() {
                        print("www");
                      }),
                      child: Text("0"),
                    ),
                    ElevatedButton(
                      onPressed: (() {
                        print("www");
                      }),
                      child: Text("."),
                    ),
                    ElevatedButton(
                      onPressed: (() {
                        print("www");
                      }),
                      child: Text("="),
                    )
                  ],
                )
              ],
            )),
      ),
    );
  }
}
