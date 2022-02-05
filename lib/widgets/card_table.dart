import 'dart:ui';

import 'package:flutter/material.dart';

class CardTable extends StatelessWidget {
  const CardTable({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Table(children: const [
      TableRow(children: [
        _SingleCard(
            icon: Icons.border_all, text: 'General', color: Colors.blue),
        _SingleCard(
            icon: Icons.car_rental, text: 'asd', color: Colors.pinkAccent)
      ]),
      TableRow(children: [
        _SingleCard(icon: Icons.shop, text: 'General', color: Colors.purple),
        _SingleCard(
            icon: Icons.pause_presentation,
            text: 'asd',
            color: Colors.purpleAccent)
      ]),
      TableRow(children: [
        _SingleCard(
            icon: Icons.cloud, text: 'General', color: Colors.amberAccent),
        _SingleCard(
            icon: Icons.food_bank, text: 'asd', color: Colors.deepOrange)
      ]),
      TableRow(children: [
        _SingleCard(
            icon: Icons.cloud, text: 'General', color: Colors.amberAccent),
        _SingleCard(
            icon: Icons.food_bank, text: 'asd', color: Colors.deepOrange)
      ])
    ]);
  }
}

class _SingleCard extends StatelessWidget {
  final IconData icon;
  final Color color;
  final String text;

  const _SingleCard({
    Key? key,
    required this.icon,
    required this.color,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(15),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
          child: Container(
              height: 180,
              decoration: BoxDecoration(
                  color: const Color.fromRGBO(62, 66, 107, 0.7),
                  borderRadius: BorderRadius.circular(20)),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CircleAvatar(
                      backgroundColor: color,
                      child: Icon(
                        icon,
                        size: 35,
                        color: Colors.white,
                      ),
                      radius: 30,
                    ),
                    const SizedBox(height: 10),
                    Text(text, style: TextStyle(color: color, fontSize: 18))
                  ])),
        ),
      ),
    );
  }
}
