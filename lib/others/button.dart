import 'package:flutter/material.dart';

class ButtonPage extends StatefulWidget {
  const ButtonPage({Key? key}) : super(key: key);

  @override
  State<ButtonPage> createState() => _ButtonPageState();
}

class _ButtonPageState extends State<ButtonPage> {
  List<String> item = ["a", "b", "c", "d"];
  String selectedItem = "a";
  final snackBar = const SnackBar(
    content: Text('snakbarrrr'),
  );
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        drawer: Drawer(
          child: Column(children: [
            Text("one"),
            Divider(height: 4),
            Text("two"),
            ListTile(
              title: Text("listone"),
              leading: Icon(Icons.person),
            )
          ]),
        ),
        appBar: AppBar(
          title: Center(child: Text("title")),
        ),
        body: SingleChildScrollView(
          child: Container(
            child: Center(
              child: Column(
                children: [
                  ElevatedButton(
                    onPressed: (() {
                      ScaffoldMessenger.of(context).showSnackBar(snackBar);
                    }),
                    child: Text("click"),
                  ),
                  FloatingActionButton(
                    onPressed: () {
                      print("floating buttone");
                    },
                    child: Icon(Icons.add),
                  ),
                  Container(
                    width: 200,
                    child: DropdownButton<String>(
                        style: TextStyle(color: Colors.black),
                        value: selectedItem,
                        items: item.map((String value) {
                          return new DropdownMenuItem<String>(
                            value: value,
                            child: new Text(value),
                          );
                        }).toList(),
                        onChanged: (value) {
                          setState(() {
                            selectedItem = value!;
                          });
                        }),
                  ),
                  IconButton(
                    onPressed: () {
                      print("iconn changgee");
                    },
                    icon: Icon(Icons.android),
                    iconSize: 50,
                  ),
                  Image.asset(
                    'assets/thumb.jpg',
                    height: 100,
                  ),
                  AspectRatio(
                    aspectRatio: 10 / 2,
                    child: Image.network(
                        "https://imge.com/wp-content/uploads/2019/02/imge-new.png"),
                  ),
                  Baseline(
                    baseline: 30,
                    baselineType: TextBaseline.alphabetic,
                    child: Container(
                      height: 50,
                      width: 60,
                      color: Colors.red,
                    ),
                  ),
                  ConstrainedBox(
                      constraints: BoxConstraints(
                    minHeight: 200,
                    minWidth: 50,
                    maxWidth: 100,
                  )),
                  FloatingActionButton(
                    onPressed: () {
                      ScaffoldMessenger.of(context).showSnackBar(snackBar);
                    },
                    child: Text("click"),
                  ),
                  BottomAppBar(
                    child: Text("bottom bar"),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
