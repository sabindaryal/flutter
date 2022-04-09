import 'package:demoapp/pages/cart.dart';
import 'package:demoapp/pages/arrival/arival.dart';

import 'package:demoapp/pages/categories/girls.dart';
import 'package:demoapp/pages/categories/kidspage.dart';
import 'package:demoapp/pages/drawerItems/oderhistory.dart';
import 'package:demoapp/pages/drawerItems/payment.dart';
import 'package:demoapp/pages/drawerItems/promo.dart';
import 'package:demoapp/pages/loginpage.dart';
import 'package:demoapp/pages/drawerItems/overview.dart';
import 'package:demoapp/pages/drawerItems/track.dart';

import 'package:flutter/material.dart';

class IdeateStore extends StatefulWidget {
  const IdeateStore({Key? key}) : super(key: key);

  @override
  State<IdeateStore> createState() => _IdeateStoreState();
}

class _IdeateStoreState extends State<IdeateStore> {
  final drawerkey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      key: drawerkey,
      appBar: AppBar(
        elevation: 0,
        title: Text(
          "IdeateStore",
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
        backgroundColor: Colors.white10,
        leading: IconButton(
          onPressed: () {
            drawerkey.currentState?.openDrawer();
          },
          icon: Icon(
            Icons.menu,
            color: Colors.black,
          ),
        ),
        actions: [
          InkWell(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: ((context) {
                return const CartPage();
              })));
            },
            child: Container(
              padding: EdgeInsets.only(right: 10),
              child: Icon(
                Icons.shopping_bag,
                color: Colors.black,
              ),
            ),
          )
        ],
      ),
      drawer: Drawer(
        child: Column(children: [
          SizedBox(height: 80),
          Image(height: 100, image: AssetImage('assets/person.png')),
          SizedBox(
            height: 10,
          ),
          Text(
            "Hello User",
            style: TextStyle(fontSize: 19),
          ),
          InkWell(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: ((context) {
                return const OverviewPage();
              })));
            },
            child: ListTile(
              leading: Icon(Icons.person),
              title: Text("Overview"),
            ),
          ),
          InkWell(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: ((context) {
                return const TrackPage();
              })));
            },
            child: ListTile(
              leading: Icon(Icons.location_pin),
              title: Text("Track order"),
            ),
          ),
          InkWell(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: ((context) {
                return const PaymentPage();
              })));
            },
            child: ListTile(
              leading: Icon(Icons.payment),
              title: Text("Payment  Methods"),
            ),
          ),
          InkWell(
            onTap: () {
              showDialog(
                  barrierDismissible: false,
                  context: context,
                  builder: (context) {
                    return AlertDialog(
                      content: SizedBox(
                        height: 130,
                        child: Padding(
                          padding: const EdgeInsets.only(left: 7, right: 7),
                          child: Column(children: [
                            Align(
                              alignment: Alignment.topRight,
                              child: IconButton(
                                  padding: EdgeInsets.zero,
                                  constraints: BoxConstraints(),
                                  onPressed: () {
                                    Navigator.pop(context);
                                  },
                                  icon: Icon(Icons.cancel)),
                            ),
                            TextField(
                              decoration: InputDecoration(
                                  hintText: "Promo Code",
                                  hintStyle: TextStyle(fontSize: 15)),
                            ),
                            SizedBox(
                              height: 7,
                            ),
                            ElevatedButton(
                                onPressed: () {}, child: Text("Apply")),
                          ]),
                        ),
                      ),
                    );
                  });
            },
            child: ListTile(
              leading: Icon(Icons.card_giftcard),
              title: Text("Promo Codes"),
            ),
          ),
          InkWell(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (((context) {
                return const OderPage();
              }))));
            },
            child: ListTile(
              leading: Icon(Icons.history),
              title: Text("Oder History"),
            ),
          ),
          ListTile(
            leading: Icon(Icons.support_agent),
            title: Text("Support"),
          ),
          ListTile(
            leading: Icon(Icons.settings),
            title: Text("Setting"),
          ),
          InkWell(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: ((context) {
                return const LoginPage();
              })));
            },
            child: ListTile(
              leading: Icon(Icons.logout),
              title: Text("Logout"),
            ),
          ),
        ]),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 30),
              child: Text(
                "Be unique",
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 30),
              child: Text(
                "With your own style",
                style: TextStyle(fontSize: 20),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 30),
                  child: Container(
                    height: 50,
                    width: 300,
                    decoration: BoxDecoration(
                        color: Color.fromARGB(255, 245, 243, 243),
                        borderRadius: BorderRadius.circular(10)),
                    child: TextField(
                      decoration: InputDecoration(
                        icon: Icon(Icons.search),
                        border: InputBorder.none,
                        hintText: "Search Your Style",
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 30),
                  child: Container(
                      height: 50,
                      width: 40,
                      decoration: BoxDecoration(
                          color: Color.fromARGB(255, 227, 130, 4),
                          borderRadius: BorderRadius.circular(10)),
                      child: Icon(Icons.notification_important)),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 30),
              child: Text(
                "Brands",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
              ),
            ),
            SizedBox(
              height: 100,
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    SizedBox(
                      width: 110,
                      child: Card(
                        child: Image.network(
                          'https://www.designyourway.net/blog/wp-content/uploads/2019/11/s1-10.png',
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 6),
                      child: SizedBox(
                        width: 110,
                        child: Card(
                          child: Image.network(
                            'https://static.dezeen.com/uploads/2019/02/new-zara-logo-col-2.jpg',
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 6),
                      child: SizedBox(
                          width: 110,
                          child: Card(
                            child: Image.network(
                              'https://www.marks-iplaw.jp/wp-content/uploads/2018/05/adidas-1-1100x464.jpg',
                              fit: BoxFit.fill,
                            ),
                          )),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 6),
                      child: SizedBox(
                          width: 110,
                          child: Card(
                            child: Image.network(
                              'https://1000logos.net/wp-content/uploads/2016/10/Colors-Air-Jordan-Logo.jpg',
                              fit: BoxFit.fill,
                            ),
                          )),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 6),
                      child: SizedBox(
                        width: 110,
                        child: Card(
                          child: Image.network(
                            'https://1000logos.net/wp-content/uploads/2017/03/Nike-emblem.jpg',
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 6),
                      child: SizedBox(
                          width: 110,
                          child: Card(
                            child: Image.network(
                              'https://respect-mag.com/wp-content/uploads/2020/03/reebok-vector-logo.jpg',
                              fit: BoxFit.fill,
                            ),
                          )),
                    ),
                  ],
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 30),
                  child: Text(
                    "New Arrival",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 20),
                  child: Text(
                    "See all",
                    style: TextStyle(fontSize: 13, color: Colors.grey),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 15,
            ),
            SizedBox(
              height: 300,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: ((context) {
                        return const FirstCat(
                          imageUrl:
                              "https://www.dhresource.com/260x260s/f2-albu-g18-M00-59-AD-rBVapGDcKL6AXvzjAAJp7HPnCPU488.jpg/jeansian-men-039-s-dress-shirts-casual-stylish.jpg",
                          description: "description",
                          producPrice: "Price:4343",
                          productName: "product name",
                        );
                      })));
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(10),
                      child: Container(
                        width: 200,
                        decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.5),
                                spreadRadius: 2,
                                blurRadius: 2,
                                offset: Offset(0, 5),
                              )
                            ],
                            image: DecorationImage(
                                fit: BoxFit.cover,
                                image: NetworkImage(
                                    'https://www.dhresource.com/260x260s/f2-albu-g18-M00-59-AD-rBVapGDcKL6AXvzjAAJp7HPnCPU488.jpg/jeansian-men-039-s-dress-shirts-casual-stylish.jpg')),
                            borderRadius: BorderRadius.circular(20)),
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: ((context) {
                        return const FirstCat(
                          imageUrl:
                              "https://5.imimg.com/data5/CX/KF/MY-24662678/men-plain-stylish-shirt-500x500.jpg",
                          productName: "name ",
                          description: "desception of product",
                          producPrice: "Price:3423",
                        );
                      })));
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(10),
                      child: Container(
                        width: 200,
                        decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.5),
                                spreadRadius: 2,
                                blurRadius: 2,
                                offset: Offset(0, 5),
                              )
                            ],
                            image: DecorationImage(
                                fit: BoxFit.cover,
                                image: NetworkImage(
                                    'https://5.imimg.com/data5/CX/KF/MY-24662678/men-plain-stylish-shirt-500x500.jpg')),
                            borderRadius: BorderRadius.circular(20)),
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: ((context) {
                        return const FirstCat(
                          producPrice: "Price:322",
                          productName: "name",
                          description: "description",
                          imageUrl:
                              "https://4.imimg.com/data4/WP/TH/MY-8708326/white-designer-shirt-500x500.jpg",
                        );
                      })));
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(10),
                      child: Container(
                        width: 200,
                        decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.5),
                                spreadRadius: 2,
                                blurRadius: 2,
                                offset: Offset(0, 5),
                              )
                            ],
                            image: DecorationImage(
                                fit: BoxFit.cover,
                                image: NetworkImage(
                                    "https://4.imimg.com/data4/WP/TH/MY-8708326/white-designer-shirt-500x500.jpg")),
                            borderRadius: BorderRadius.circular(20)),
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: ((context) {
                        return const FirstCat(
                          producPrice: "Price:222",
                          productName: "Name",
                          description: "Description",
                          imageUrl:
                              "http://5.imimg.com/data5/PT/IX/MB/SELLER-5399709/skpdnm19mns-jns-d-blu-1-slim-fit-men-denim-jeans-500x500.jpg",
                        );
                      })));
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(10),
                      child: Container(
                        width: 200,
                        decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.5),
                                spreadRadius: 2,
                                blurRadius: 2,
                                offset: Offset(0, 5),
                              )
                            ],
                            image: DecorationImage(
                                fit: BoxFit.cover,
                                image: NetworkImage(
                                    "http://5.imimg.com/data5/PT/IX/MB/SELLER-5399709/skpdnm19mns-jns-d-blu-1-slim-fit-men-denim-jeans-500x500.jpg")),
                            borderRadius: BorderRadius.circular(20)),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 30),
                  child: Text(
                    "Categories",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 20),
                  child: Text(
                    "see all",
                    style: TextStyle(fontSize: 13, color: Colors.grey),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            SizedBox(
              height: 190,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: Column(
                      children: [
                        InkWell(
                          onTap: () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: ((context) {
                              return const GirlsPage();
                            })));
                          },
                          child: Container(
                            height: 140,
                            width: 100,
                            decoration: BoxDecoration(
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.2),
                                  spreadRadius: 1,
                                  blurRadius: 1,
                                  offset: Offset(1, 1),
                                )
                              ],
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(20),
                              image: DecorationImage(
                                  fit: BoxFit.cover,
                                  image: NetworkImage(
                                      "https://rukminim2.flixcart.com/image/800/960/krjjde80/t-shirt/i/8/i/m-23771-0164-levi-s-original-imag5bh93bxyfz6y.jpeg?q=50")),
                            ),
                          ),
                        ),
                        Text("Girls"),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: Column(
                      children: [
                        InkWell(
                          onTap: () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: ((context) {
                              return const KidsPage();
                            })));
                          },
                          child: Container(
                            height: 140,
                            width: 100,
                            decoration: BoxDecoration(
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.2),
                                  spreadRadius: 1,
                                  blurRadius: 1,
                                  offset: Offset(1, 1),
                                )
                              ],
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(20),
                              image: DecorationImage(
                                  fit: BoxFit.cover,
                                  image: NetworkImage(
                                      "https://rukminim2.flixcart.com/image/800/960/l13whow0/shirt/q/b/k/13-14-years-bma11317-crimsoune-club-original-imagcqvuc3vggzpy.jpeg?q=50")),
                            ),
                          ),
                        ),
                        Text("Kids"),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: Column(
                      children: [
                        Container(
                          height: 140,
                          width: 100,
                          decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.2),
                                spreadRadius: 1,
                                blurRadius: 1,
                                offset: Offset(1, 1),
                              )
                            ],
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20),
                            image: DecorationImage(
                                fit: BoxFit.cover,
                                image: NetworkImage(
                                    "https://rukminim2.flixcart.com/image/800/960/k0463rk0/shirt/g/3/a/44-8985565-roadster-original-imafjvyvqzycq8gf.jpeg?q=50")),
                          ),
                        ),
                        Text("Men"),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: Column(
                      children: [
                        Container(
                          height: 140,
                          width: 100,
                          decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.2),
                                spreadRadius: 1,
                                blurRadius: 1,
                                offset: Offset(1, 1),
                              )
                            ],
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20),
                            image: DecorationImage(
                                fit: BoxFit.contain,
                                image: NetworkImage(
                                    "https://rukminim2.flixcart.com/image/800/960/kcc9q4w0/dress/2/m/2/l-rddr-011-rudraaksha-original-imafthtxyjgvzahh.jpeg?q=50")),
                          ),
                        ),
                        Text("Women"),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: Column(
                      children: [
                        Container(
                          height: 140,
                          width: 100,
                          decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.2),
                                spreadRadius: 1,
                                blurRadius: 1,
                                offset: Offset(1, 1),
                              )
                            ],
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20),
                            image: DecorationImage(
                                fit: BoxFit.contain,
                                image: NetworkImage(
                                    "https://rukminim2.flixcart.com/image/800/960/ktx9si80/kids-t-shirt/j/r/d/7-8-years-tblylrnboy-bd39-tripr-original-imag75uzhwmychgb.jpeg?q=50")),
                          ),
                        ),
                        Text("Boy"),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 30),
              child: Text(
                "Deal of The Day",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: SizedBox(
                height: 200,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: 150,
                      width: width / 3,
                      decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.5),
                              spreadRadius: 2,
                              blurRadius: 2,
                              offset: Offset(0, 5),
                            )
                          ],
                          image: DecorationImage(
                              fit: BoxFit.cover,
                              image: NetworkImage(
                                  'https://www.dhresource.com/260x260s/f2-albu-g18-M00-59-AD-rBVapGDcKL6AXvzjAAJp7HPnCPU488.jpg/jeansian-men-039-s-dress-shirts-casual-stylish.jpg')),
                          borderRadius: BorderRadius.circular(20)),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8),
                      child: SizedBox(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            SizedBox(
                              height: 50,
                            ),
                            Text(
                              "Product name",
                              style: TextStyle(
                                  fontSize: 15, fontWeight: FontWeight.w600),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              "20%off",
                              style: TextStyle(color: Colors.red),
                            ),
                            ElevatedButton(
                                onPressed: () {
                                  Navigator.push(context,
                                      MaterialPageRoute(builder: (((context) {
                                    return const CartPage();
                                  }))));
                                },
                                child: Text("Add to cart")),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
