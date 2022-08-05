import 'package:flutter/material.dart';
import 'package:test_project/category.dart';
import 'package:test_project/menu.dart';
import 'package:test_project/search.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Container(
              color: Color.fromARGB(255, 75, 73, 73),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "O.K - K.O | Доставка паназиатской кухни",
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    IconButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => for_search()));
                        },
                        icon: Icon(Icons.search))
                  ],
                ),
              ),
            ),
            Container(
              child: Image(
                image: AssetImage('assest/For_main_cut.jpeg'),
                fit: BoxFit.fill,
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  categories(names: "Роллы"),
                  categories(names: "Воки"),
                  categories(names: "Горячие роллы"),
                  categories(names: "Салаты"),
                  categories(names: "Суши"),
                  categories(names: "Соусы"),
                  categories(names: "Напитки"),
                ],
              ),
            ),
            Expanded(
              child: ListView(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Container(
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey),
                          borderRadius: BorderRadius.all(Radius.circular(15))),
                      child: Column(
                        children: [
                          Text(
                            "Супы",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 20),
                          ),
                          menu(
                            name: "Кацу Рамен",
                            way: "assest/Kacu_Ramen.jpeg",
                            price: "• Стоимость: 600 ₽\n• Вес: 650 гр.",
                            more: """• Наваристый свиной бульон.
• Филе курицы в панировке.
• Лапша Удон.
• Нарутомаки из трески.
• Грибы Шиитаке.
• Маринованное яйцо.
• Креветки.
• Ростки маш.
• Зеленый лук.
• Кунжут.
• Кинза.
• Лайм.
• Масло настоянное на чили и чесноке.
""",
                          ),
                          menu(
                            name: "Том Кха",
                            way: "assest/Tom_kha.jpeg",
                            price: "• Стоимость: 420 ₽\n• Вес: 400 гр.",
                            more: """• Наваристый куриный бульон.
• Куриная грудка.
• Кокосовые сливки.
• Креветки.
• Грибы шиитаке.
• Лук.
• Помидор черри.
• Рис.
• Кинза.
• Паста Том Кха.
• Рыбный соус.
""",
                          ),
                          menu(
                            name: "Том Ям",
                            way: "assest/Tom_yam.jpeg",
                            price: "• Стоимость: 420 ₽\n• Вес: 400 гр.",
                            more: """• Наваристый куриный бульон.
• Куриная грудка.
• Кокосовые сливки.
• Креветки.
• Грибы шиитаке.
• Лук.
• Помидор черри.
• Рис.
• Кинза.
• Паста Том Ям.
• Рыбный соус.
""",
                          ),
                          menu(
                            name: "Мисо с креветками\n и тофу ",
                            way: "assest/Miso.jpeg",
                            price: "• Стоимость: 300 ₽\n• Вес: 350 гр.",
                            more: """• Насыщенный рыбный бульон.
• Королевские Креветки.
• Маринованный Тофу.
• Водоросли Вакамэ.
• Суповая основа Хендаши.
• Мисо паста.
• Кунжут.
• Зеленый лук.
• Кинза.
""",
                          ),
                          menu(
                            name: "Мисо с копчёным \nлососем",
                            way: "assest/Miso_los.jpeg",
                            price: "• Стоимость: 300 ₽\n• Вес: 350 гр.",
                            more: """• Насыщенный рыбный бульон.
• Копченый Лосось.
• Кокосовые сливки.
• Водоросли Вакамэ.
• Суповая основа Хендаши.
• Мисо паста.
• Кунжут.
• Зеленый лук.
• Кинза.
""",
                          ),
                          menu(
                            name: "Фо Бо",
                            way: "assest/Fo_Bo.jpeg",
                            price: "• Стоимость: 440 ₽\n• Вес: 500 гр.",
                            more: """• Наваристый говяжий бульон.
• Рисовая лапша.
• Маринованная говядина.
• Маринованное яйцо.
• Ростки маш.
• Зеленый лук.
• Кинза.
• Лайм.
• Чили перец.
""",
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
