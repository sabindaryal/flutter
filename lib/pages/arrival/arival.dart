import 'package:flutter/material.dart';

class FirstCat extends StatefulWidget {
  final String productName;
  final String imageUrl;
  final String description;
  final String producPrice;

  const FirstCat(
      {Key? key,
      required this.productName,
      required this.imageUrl,
      required this.description,
      required this.producPrice})
      : super(key: key);

  @override
  State<FirstCat> createState() => _FirstShirtState();
}

class _FirstShirtState extends State<FirstCat> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Padding(
          padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 15),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                InkWell(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: CircleAvatar(
                    child: Icon(
                      Icons.arrow_back,
                      color: Colors.black,
                    ),
                    backgroundColor: Colors.grey,
                  ),
                ),
                Text(
                  widget.productName,
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 10),
                  child: CircleAvatar(
                    child: Icon(
                      Icons.favorite,
                      color: Colors.black,
                    ),
                    backgroundColor: Colors.grey,
                  ),
                ),
              ],
            ),
            Expanded(
              child: ListView(
                children: [
                  Container(
                    alignment: Alignment.center,
                    height: 300,
                    width: double.infinity,
                    child: Image.network(widget.imageUrl),
                  ),
                  Text(
                    widget.description,
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "tshirt tshirt tshirt tshirt tshirt tshirt tshirt tshirt tshirt tshirt tshirt tshirt tshirt tshirt tshirt tshirt tshirt tshirt tshirt tshirt tshirttshirt tshirt tshirt tshirt tshirt tshirt tshirt tshirt tshirt tshirt tshirt tshirt tshirt tshirttshirt tshirt tshirt tshirt tshirt tshirt tshirt tshirt tshirt tshirt tshirt tshirt tshirt tshirt tshirt tshirt tshirt tshirt tshirt tshirt tshirt tshirt tshirt tshirt tshirt tshirt tshirt tshirt tshirt tshirt tshirt tshirt tshirt tshirt tshirttshirt tshirt tshirt tshirt tshirt tshirt tshirt tshirt tshirt tshirt tshirt tshirt tshirt tshirttshirt tshirt tshirt tshirt tshirt tshirt tshirt tshirt tshirt tshirt tshirt tshirt tshirt tshirt tshirt tshirt tshirt tshirt tshirt tshirt tshirt tshirt tshirt tshirt tshirt tshirt tshirt tshirt tshirt tshirt tshirt tshirt tshirt tshirt tshirttshirt tshirt tshirt tshirt tshirt tshirt tshirt tshirt tshirt tshirt tshirt tshirt tshirt tshirttshirt tshirt tshirt tshirt tshirt tshirt tshirt tshirt tshirt tshirt tshirt tshirt tshirt tshirt ",
                    style: TextStyle(fontSize: 15, color: Colors.grey),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              widget.producPrice,
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.w700),
            ),
            SizedBox(
              height: 20,
            ),
            Align(
              alignment: Alignment.center,
              child: SizedBox(
                width: 200,
                height: 50,
                child: ElevatedButton(
                    onPressed: () {
                      print("wdfajk");
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.shopping_bag),
                        Text(
                          "Add to Cart",
                        ),
                      ],
                    )),
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
