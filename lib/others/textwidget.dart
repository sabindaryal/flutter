import 'package:flutter/material.dart';

class TextWedget extends StatefulWidget {
  const TextWedget({Key? key}) : super(key: key);

  @override
  State<TextWedget> createState() => _TextWedgetState();
}

class _TextWedgetState extends State<TextWedget> {
  bool isClicked = false;
  final TextEditingController textEditingController = TextEditingController();
  String textField = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(children: [
          Text(textField),
          Container(
            height: 60,
            width: 400,
            decoration: BoxDecoration(
              color: isClicked ? Colors.green : Colors.red,
            ),
            child: TextField(
              controller: textEditingController,
            ),
          ),
          ElevatedButton(
            onPressed: () {
              setState(() {
                textField = textEditingController.text;
                isClicked = !isClicked;
              });
            },
            child: Text('Pressed'),
          )
        ]),
      ),
    );
  }
}
