import 'package:flutter/material.dart';

class categories extends StatelessWidget {
  final String names;
  const categories({Key? key, required this.names}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(3.5),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 1),
          child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                onPrimary: Theme.of(context).colorScheme.onPrimaryContainer,
                // Background color
                primary: Theme.of(context).colorScheme.surfaceVariant,
              ),
              onPressed: () {},
              child: Text(
                names,
                style: TextStyle(color: Colors.white),
              )),
        ));
  }
}
