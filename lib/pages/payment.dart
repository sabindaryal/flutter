import 'package:demoapp/pages/cardpage.dart';
import 'package:flutter/material.dart';

class Payment extends StatefulWidget {
  const Payment({Key? key}) : super(key: key);

  @override
  State<Payment> createState() => _PaymentPageState();
}

class _PaymentPageState extends State<Payment> {
  List<String> provinceitem = [
    "Province",
    "Province one",
    "Province two",
    "Province three",
    "Province four",
    "Province five",
    "Province six",
    "Province seven",
  ];
  String provinceselectedItem = "Province";
  List<String> cityitem = [
    "CityName",
    "Second City",
    "Third City",
    "Fourth City"
  ];
  String cityselectedItem = "CityName";
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
          child: Column(children: [
            Row(
              children: [
                CircleAvatar(
                  backgroundColor: Colors.grey,
                  child: InkWell(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Icon(Icons.arrow_back)),
                ),
              ],
            ),
            SizedBox(
              height: 50,
            ),
            Align(
                alignment: Alignment.topLeft,
                child: Text(
                  "Address Detials",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
                )),
            TextField(
              decoration: InputDecoration(
                label: Text("Full name"),
              ),
            ),
            TextField(
              decoration: InputDecoration(
                label: Text("Phone number"),
              ),
            ),
            TextField(
              decoration: InputDecoration(
                label: Text("Email"),
              ),
            ),
            Row(
              children: [
                Flexible(
                  child: InputDecorator(
                    decoration: InputDecoration(
                      labelText: "Province",
                    ),
                    child: DropdownButtonHideUnderline(
                      child: DropdownButton<String>(
                          style: TextStyle(color: Colors.black),
                          value: provinceselectedItem,
                          items: provinceitem.map((String value) {
                            return new DropdownMenuItem<String>(
                              value: value,
                              child: new Text(value),
                            );
                          }).toList(),
                          onChanged: (value) {
                            setState(() {
                              provinceselectedItem = value!;
                            });
                          }),
                    ),
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Flexible(
                  child: InputDecorator(
                    decoration: InputDecoration(
                      labelText: "City",
                    ),
                    child: DropdownButtonHideUnderline(
                      child: DropdownButton<String>(
                          style: TextStyle(color: Colors.black),
                          value: cityselectedItem,
                          items: cityitem.map((String value) {
                            return new DropdownMenuItem<String>(
                              value: value,
                              child: new Text(value),
                            );
                          }).toList(),
                          onChanged: (value) {
                            setState(() {
                              cityselectedItem = value!;
                            });
                          }),
                    ),
                  ),
                ),
              ],
            ),
            TextField(
              decoration: InputDecoration(
                label: Text("Addresh"),
              ),
            ),
            SizedBox(
              height: 250,
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: ((context) {
                    return const CardPage();
                  })));
                },
                child: Text("Proced to Payment"))
          ]),
        ),
      ),
    );
  }
}
