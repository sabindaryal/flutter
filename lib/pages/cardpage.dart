import 'package:flutter/material.dart';

class CardPage extends StatefulWidget {
  const CardPage({Key? key}) : super(key: key);

  @override
  State<CardPage> createState() => _CardPageState();
}

class _CardPageState extends State<CardPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          iconTheme: IconThemeData(color: Colors.black),
          title: Padding(
            padding: const EdgeInsets.only(right: 50),
            child: Align(
              alignment: Alignment.center,
              child: Text(
                "Payment",
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                    color: Colors.black),
              ),
            ),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Text(
              "Pay with Card",
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
            ),
            SizedBox(
              height: 100,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: const [
                  SizedBox(
                    width: 150,
                    child: Card(
                      child: Image(
                          fit: BoxFit.cover,
                          image: NetworkImage(
                              'https://www.khojnu.com/wp-content/uploads/2020/01/25637-6-credit-card-visa-and-master-card-transparent-image.png')),
                    ),
                  ),
                  SizedBox(
                    width: 150,
                    child: Card(
                      child: Image(
                          fit: BoxFit.cover,
                          image: NetworkImage(
                              'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTnpnNAVLuPHFfE9p2WeEJnNMblDYcmg5c_awT3H99qxbBhJyEtyj6b18fzNEal8jJAcPU&usqp=CAU')),
                    ),
                  ),
                  SizedBox(
                    width: 90,
                    child: Card(
                        child: Image(
                      fit: BoxFit.cover,
                      image: NetworkImage(
                          'https://bfsi.eletsonline.com/wp-content/uploads/2019/12/Banks-issued-63-percent-higher-debit-cards-in-2019-than-in-2015-RBI-Data.jpg'),
                    )),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "Pay with Wallets",
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
            ),
            SizedBox(
              height: 90,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: const [
                  SizedBox(
                    width: 150,
                    child: Card(
                      child: Image(
                          fit: BoxFit.cover,
                          image: NetworkImage(
                              'https://ictframe.com/wp-content/uploads/Fonepay-Crosses-10-Thousands-Merchants.png')),
                    ),
                  ),
                  SizedBox(
                    width: 150,
                    child: Card(
                      child: Image(
                          fit: BoxFit.cover,
                          image: NetworkImage(
                              'https://d1yjjnpx0p53s8.cloudfront.net/styles/logo-thumbnail/s3/082018/untitled-1_110.png?NUSEVyMKG.6mmq9Jwutfm3zYrezAp4gA&itok=nwwsDR-M')),
                    ),
                  ),
                  SizedBox(
                    width: 150,
                    child: Card(
                        child: Image(
                      fit: BoxFit.cover,
                      image: NetworkImage(
                          'https://talentconnects.com.np/storage/app/public/file_name/eSewa%20Fonepay_1599501986.jpg'),
                    )),
                  ),
                  SizedBox(
                    width: 150,
                    child: Card(
                        child: Image(
                      fit: BoxFit.cover,
                      image: NetworkImage(
                          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRlTt8_KUBBSrCwhTMreFF9zluoAJtFU-DKRmG2cUIGSoNlgKWjlRJzd1zDFbxEuaAipcE&usqp=CAU'),
                    )),
                  ),
                  SizedBox(
                    width: 150,
                    child: Card(
                        child: Image(
                      fit: BoxFit.contain,
                      image: NetworkImage(
                          'https://prabhupay.com/images/prabhupay_logo.png'),
                    )),
                  ),
                ],
              ),
            )
          ]),
        ),
      ),
    );
  }
}
