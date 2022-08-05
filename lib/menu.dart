import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:test_project/page.dart';

class menu extends StatelessWidget {
  final String name;
  final String way;
  final String price;
  final String more;
  const menu(
      {Key? key,
      required this.name,
      required this.way,
      required this.price,
      required this.more})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 3),
          child: Row(
            children: [
              TextButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => product_page(
                                  image: way,
                                  more: more,
                                  name: name.replaceAll(new RegExp("\n"), ""),
                                  price_page: price,
                                )));
                  },
                  style: TextButton.styleFrom(
                      //primary: Color.fromARGB(0, 48, 48, 48)),
                      primary: Color.fromARGB(0, 216, 182, 182)),
                  child: Row(
                    children: [
                      Image(
                        image: AssetImage(way),
                        height: 100,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(bottom: 15),
                              child: Expanded(
                                child: Text(
                                  name,
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20,
                                      color: Colors.white),
                                ),
                              ),
                            ),
                            Text(
                              price,
                              style: TextStyle(color: Colors.white),
                            )
                          ],
                        ),
                      ),
                    ],
                  )),
            ],
          ),
        ),
        IconButton(onPressed: () {}, icon: Icon(CupertinoIcons.cart))
      ],
    );
  }
}
