import 'package:flutter/material.dart';

class KidsPage extends StatefulWidget {
  const KidsPage({Key? key}) : super(key: key);

  @override
  State<KidsPage> createState() => _KidsPageState();
}

class _KidsPageState extends State<KidsPage> {
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          iconTheme: IconThemeData(color: Colors.black),
          title: Padding(
            padding: const EdgeInsets.only(right: 40),
            child: Align(
                alignment: Alignment.center,
                child: Text(
                  "Kids Collection",
                  style: TextStyle(color: Colors.black),
                )),
          ),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
            child: Column(
              children: [
                SizedBox(
                  height: 250,
                  child: Row(
                    children: [
                      Expanded(
                        child: Card(
                          child: Padding(
                            padding: const EdgeInsets.all(10),
                            child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Image(
                                      height: 100,
                                      image: NetworkImage(
                                          'https://www.dhresource.com/260x260s/f2-albu-g18-M00-59-AD-rBVapGDcKL6AXvzjAAJp7HPnCPU488.jpg/jeansian-men-039-s-dress-shirts-casual-stylish.jpg')),
                                  SizedBox(
                                    height: 15,
                                  ),
                                  Flexible(
                                    child: Text(
                                      "Product One",
                                      style: TextStyle(fontSize: 16),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Text("RS 1033"),
                                  ElevatedButton(
                                      onPressed: () {},
                                      child: Text("Add to Cart")),
                                ]),
                          ),
                        ),
                      ),
                      Expanded(
                        child: Card(
                          child: Padding(
                            padding: const EdgeInsets.all(10),
                            child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Image(
                                      height: 100,
                                      image: NetworkImage(
                                          'https://www.dhresource.com/260x260s/f2-albu-g18-M00-59-AD-rBVapGDcKL6AXvzjAAJp7HPnCPU488.jpg/jeansian-men-039-s-dress-shirts-casual-stylish.jpg')),
                                  SizedBox(
                                    height: 15,
                                  ),
                                  Flexible(
                                    child: Text(
                                      "Product Two",
                                      style: TextStyle(fontSize: 16),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Text("RS 893"),
                                  ElevatedButton(
                                      onPressed: () {},
                                      child: Text("Add to Cart")),
                                ]),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 250,
                  child: Row(
                    children: [
                      Expanded(
                        child: Card(
                          child: Padding(
                            padding: const EdgeInsets.all(10),
                            child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Image(
                                      height: 100,
                                      image: NetworkImage(
                                          'https://www.dhresource.com/260x260s/f2-albu-g18-M00-59-AD-rBVapGDcKL6AXvzjAAJp7HPnCPU488.jpg/jeansian-men-039-s-dress-shirts-casual-stylish.jpg')),
                                  SizedBox(
                                    height: 15,
                                  ),
                                  Expanded(
                                    child: Text(
                                      "Product Three",
                                      style: TextStyle(fontSize: 16),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Text("RS 1033"),
                                  ElevatedButton(
                                      onPressed: () {},
                                      child: Text("Add to Cart")),
                                ]),
                          ),
                        ),
                      ),
                      Expanded(
                        child: Card(
                          child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Image(
                                    height: 100,
                                    image: NetworkImage(
                                        'https://www.dhresource.com/260x260s/f2-albu-g18-M00-59-AD-rBVapGDcKL6AXvzjAAJp7HPnCPU488.jpg/jeansian-men-039-s-dress-shirts-casual-stylish.jpg')),
                                SizedBox(
                                  height: 15,
                                ),
                                Expanded(
                                  child: Text(
                                    "Product Four",
                                    style: TextStyle(fontSize: 16),
                                  ),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Text("RS 893"),
                                ElevatedButton(
                                    onPressed: () {},
                                    child: Text("Add to Cart")),
                              ]),
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 250,
                  child: Row(
                    children: [
                      Expanded(
                        child: Card(
                          child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Image(
                                    height: 100,
                                    image: NetworkImage(
                                        'https://www.dhresource.com/260x260s/f2-albu-g18-M00-59-AD-rBVapGDcKL6AXvzjAAJp7HPnCPU488.jpg/jeansian-men-039-s-dress-shirts-casual-stylish.jpg')),
                                SizedBox(
                                  height: 15,
                                ),
                                Expanded(
                                  child: Text(
                                    "Product Five",
                                    style: TextStyle(fontSize: 16),
                                  ),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Text("RS 1033"),
                                ElevatedButton(
                                    onPressed: () {},
                                    child: Text("Add to Cart")),
                              ]),
                        ),
                      ),
                      Expanded(
                        child: Card(
                          child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Image(
                                    height: 100,
                                    image: NetworkImage(
                                        'https://www.dhresource.com/260x260s/f2-albu-g18-M00-59-AD-rBVapGDcKL6AXvzjAAJp7HPnCPU488.jpg/jeansian-men-039-s-dress-shirts-casual-stylish.jpg')),
                                SizedBox(
                                  height: 15,
                                ),
                                Text(
                                  "Product Six",
                                  style: TextStyle(fontSize: 16),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Text("RS 893"),
                                ElevatedButton(
                                    onPressed: () {},
                                    child: Text("Add to Cart")),
                              ]),
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 250,
                  child: Row(
                    children: [
                      Expanded(
                        child: Card(
                          child: Padding(
                            padding: const EdgeInsets.all(10),
                            child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Image(
                                      height: 100,
                                      image: NetworkImage(
                                          'https://www.dhresource.com/260x260s/f2-albu-g18-M00-59-AD-rBVapGDcKL6AXvzjAAJp7HPnCPU488.jpg/jeansian-men-039-s-dress-shirts-casual-stylish.jpg')),
                                  SizedBox(
                                    height: 15,
                                  ),
                                  Expanded(
                                    child: Text(
                                      "Product Seven",
                                      style: TextStyle(fontSize: 16),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Text("RS 1033"),
                                  ElevatedButton(
                                      onPressed: () {},
                                      child: Text("Add to Cart")),
                                ]),
                          ),
                        ),
                      ),
                      Expanded(
                        child: Card(
                          child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Image(
                                    height: 100,
                                    image: NetworkImage(
                                        'https://www.dhresource.com/260x260s/f2-albu-g18-M00-59-AD-rBVapGDcKL6AXvzjAAJp7HPnCPU488.jpg/jeansian-men-039-s-dress-shirts-casual-stylish.jpg')),
                                SizedBox(
                                  height: 15,
                                ),
                                Expanded(
                                  child: Text(
                                    "Product Eight",
                                    style: TextStyle(fontSize: 16),
                                  ),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Text("RS 893"),
                                ElevatedButton(
                                    onPressed: () {},
                                    child: Text("Add to Cart")),
                              ]),
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
