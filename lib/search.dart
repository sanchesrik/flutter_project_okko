import 'package:flutter/material.dart';
import 'menu.dart';

class for_search extends StatefulWidget {
  const for_search({Key? key}) : super(key: key);

  @override
  State<for_search> createState() => _for_searchState();
}

class _for_searchState extends State<for_search> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(9),
        child: Column(
          children: [
            TextField(
                obscureText: true,
                decoration: InputDecoration(
                    suffixIcon: Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Container(
                        decoration: BoxDecoration(
                            color: Colors.orange,
                            borderRadius:
                                BorderRadius.all(Radius.circular(15))),
                        child: TextButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          child: Text(
                            "Отмена",
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(15))),
                    prefixIcon: Icon(Icons.search),
                    hintText: "Поиск",
                    prefixIconColor: Colors.white,
                    hintStyle: TextStyle(color: Colors.white))),
            Expanded(
              child: ListView(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Column(
                      children: [
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
                ],
              ),
            )
          ],
        ),
      ),
    ));
  }
}
