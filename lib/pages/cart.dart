import 'package:demoapp/pages/payment.dart';
import 'package:flutter/material.dart';

class CartPage extends StatefulWidget {
  const CartPage({Key? key}) : super(key: key);

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          iconTheme: IconThemeData(color: Colors.black),
          title: Padding(
            padding: const EdgeInsets.only(right: 50),
            child: Align(
              alignment: Alignment.center,
              child: Text(
                "My cart",
                style: TextStyle(color: Colors.black),
              ),
            ),
          ),
          backgroundColor: Colors.white,
        ),
        body: Column(children: [
          Expanded(
              child: ListView.builder(
            itemCount: 10,
            itemBuilder: (context, index) {
              return SizedBox(
                height: 150,
                child: Card(
                  child: Padding(
                    padding: const EdgeInsets.all(10),
                    child: Row(
                      children: [
                        SizedBox(
                          width: 80,
                          child: Image.network(
                              "https://www.dhresource.com/260x260s/f2-albu-g18-M00-59-AD-rBVapGDcKL6AXvzjAAJp7HPnCPU488.jpg/jeansian-men-039-s-dress-shirts-casual-stylish.jpg"),
                        ),
                        SizedBox(
                          width: 20.0,
                        ),
                        Align(
                          alignment: Alignment.topLeft,
                          child: Text("Product name",
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.w500)),
                        ),
                        SizedBox(
                          width: 3,
                        ),
                        Column(
                          children: [
                            Text(
                              "Rs 1000",
                              style: TextStyle(fontWeight: FontWeight.w600),
                            ),
                            Row(
                              children: [
                                IconButton(
                                    onPressed: () {}, icon: Icon(Icons.remove)),
                                Text("1"),
                                IconButton(
                                    onPressed: () {}, icon: Icon(Icons.add)),
                              ],
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              );
            },
          )),
          SizedBox(
            height: 160,
            width: width,
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 20),
              child: Column(
                children: [
                  TextField(
                    decoration: InputDecoration(
                      hintText: "Promo Code",
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 5),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Net Amount",
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.w500),
                        ),
                        Text(
                          "293848",
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.w500),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 5),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Shipping Charge",
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.w500),
                        ),
                        Text(
                          "129",
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.w500),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 5),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Total",
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.w500),
                        ),
                        Text(
                          "384948",
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.w500),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
          // SizedBox(
          //   height: 150,
          //   child: Card(
          //     child: Padding(
          //       padding: const EdgeInsets.all(10),
          //       child: Row(
          //         children: [
          //           SizedBox(
          //             width: 80,
          //             child: Image.network(
          //                 "https://www.dhresource.com/260x260s/f2-albu-g18-M00-59-AD-rBVapGDcKL6AXvzjAAJp7HPnCPU488.jpg/jeansian-men-039-s-dress-shirts-casual-stylish.jpg"),
          //           ),
          //           SizedBox(
          //             width: 20.0,
          //           ),
          //           Align(
          //             alignment: Alignment.topLeft,
          //             child: Text("Product name",
          //                 style: TextStyle(
          //                     fontSize: 16, fontWeight: FontWeight.w500)),
          //           ),
          //           SizedBox(
          //             width: 3,
          //           ),
          //           Column(
          //             children: [
          //               Text(
          //                 "Rs 1000",
          //                 style: TextStyle(fontWeight: FontWeight.w600),
          //               ),
          //               Row(
          //                 children: [
          //                   IconButton(
          //                       onPressed: () {}, icon: Icon(Icons.remove)),
          //                   Text("1"),
          //                   IconButton(
          //                       onPressed: () {}, icon: Icon(Icons.add)),
          //                 ],
          //               )
          //             ],
          //           )
          //         ],
          //       ),
          //     ),
          //   ),
          // ),
          ElevatedButton(
              onPressed: (() {
                Navigator.push(context, MaterialPageRoute(builder: ((context) {
                  return Payment();
                })));
              }),
              child: Text("Proceed")),
          SizedBox(
            height: 10,
          )
          // SizedBox(
          //   height: 150,
          //   child: Card(
          //     child: Padding(
          //       padding: const EdgeInsets.all(10),
          //       child: Row(
          //         children: [
          //           SizedBox(
          //             width: 80,
          //             child: Image.network(
          //                 "https://www.dhresource.com/260x260s/f2-albu-g18-M00-59-AD-rBVapGDcKL6AXvzjAAJp7HPnCPU488.jpg/jeansian-men-039-s-dress-shirts-casual-stylish.jpg"),
          //           ),
          //           SizedBox(
          //             width: 20.0,
          //           ),
          //           Align(
          //             alignment: Alignment.topLeft,
          //             child: Text("Product name",
          //                 style: TextStyle(
          //                     fontSize: 16, fontWeight: FontWeight.w500)),
          //           ),
          //           SizedBox(
          //             width: 3,
          //           ),
          //           Column(
          //             children: [
          //               Text(
          //                 "Rs 1000",
          //                 style: TextStyle(fontWeight: FontWeight.w600),
          //               ),
          //               Row(
          //                 children: [
          //                   IconButton(
          //                       onPressed: () {}, icon: Icon(Icons.remove)),
          //                   Text("1"),
          //                   IconButton(
          //                       onPressed: () {}, icon: Icon(Icons.add)),
          //                 ],
          //               )
          //             ],
          //           )
          //         ],
          //       ),
          //     ),
          //   ),
          // ),
          // SizedBox(
          //   height: 150,
          //   child: Card(
          //     child: Padding(
          //       padding: const EdgeInsets.all(10),
          //       child: Row(
          //         children: [
          //           SizedBox(
          //             width: 80,
          //             child: Image.network(
          //                 "https://www.dhresource.com/260x260s/f2-albu-g18-M00-59-AD-rBVapGDcKL6AXvzjAAJp7HPnCPU488.jpg/jeansian-men-039-s-dress-shirts-casual-stylish.jpg"),
          //           ),
          //           SizedBox(
          //             width: 20.0,
          //           ),
          //           Align(
          //             alignment: Alignment.topLeft,
          //             child: Text("Product name",
          //                 style: TextStyle(
          //                     fontSize: 16, fontWeight: FontWeight.w500)),
          //           ),
          //           SizedBox(
          //             width: 3,
          //           ),
          //           Column(
          //             children: [
          //               Text(
          //                 "Rs 1000",
          //                 style: TextStyle(fontWeight: FontWeight.w600),
          //               ),
          //               Row(
          //                 children: [
          //                   IconButton(
          //                       onPressed: () {}, icon: Icon(Icons.remove)),
          //                   Text("1"),
          //                   IconButton(
          //                       onPressed: () {}, icon: Icon(Icons.add)),
          //                 ],
          //               )
          //             ],
          //           )
          //         ],
          //       ),
          //     ),
          //   ),
          // ),
          // Row(
          //   children: [
          //     Text("Total"),
          //   ],
          // )
        ]),
      ),
    );
  }
}
