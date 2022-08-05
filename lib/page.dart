import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class product_page extends StatelessWidget {
  final String name;
  final String image;
  final String more;
  final String price_page;
  const product_page(
      {Key? key,
      required this.image,
      required this.more,
      required this.name,
      required this.price_page})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  child: Container(
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey),
                        borderRadius: BorderRadius.all(Radius.circular(15))),
                    child: Text(
                      name,
                      style:
                          TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image(
                image: AssetImage(image),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Text(
                    more,
                    style: TextStyle(
                      fontSize: 16,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey),
                  borderRadius: BorderRadius.all(Radius.circular(15))),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  price_page,
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18.5),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 8),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 3),
                child: Row(
                  children: [
                    Expanded(
                      child: OutlinedButton(
                          onPressed: () {},
                          style: OutlinedButton.styleFrom(
                              side:
                                  BorderSide(color: Colors.green, width: 2.5)),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "Добавить в корзину",
                                style: TextStyle(
                                    fontSize: 20,
                                    color: Color.fromARGB(255, 113, 206, 110)),
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Icon(
                                CupertinoIcons.cart,
                                color: Color.fromARGB(255, 113, 206, 110),
                              )
                            ],
                          )),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 3),
              child: Row(
                children: [
                  Expanded(
                    child: OutlinedButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        style: OutlinedButton.styleFrom(
                            side: BorderSide(color: Colors.red, width: 2.5)),
                        child: Text(
                          "Назад",
                          style: TextStyle(
                              fontSize: 20,
                              color: Color.fromARGB(255, 207, 102, 102)),
                        )),
                  ),
                ],
              ),
            )
          ],
        ),
      )),
    );
  }
}
