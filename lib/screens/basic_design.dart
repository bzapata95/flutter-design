import 'package:flutter/material.dart';

class BasicDesignScreen extends StatelessWidget {
  const BasicDesignScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        const Image(
          image: AssetImage('assets/landscape.jpeg'),
        ),
        const Title(),
        const ButtonSection(),
        Container(
          margin: const EdgeInsets.symmetric(vertical: 15),
          padding: const EdgeInsets.all(15),
          child: const Text(
              'Aute consequat amet elit ea magna consectetur consectetur deserunt deserunt sint in laboris esse. Non elit voluptate qui est magna id aliquip commodo sunt. In reprehenderit amet magna cupidatat. Anim qui nulla proident cillum commodo. Consequat est occaecat in ut proident ut eu ad ex consectetur sunt nulla consectetur reprehenderit.'),
        )
      ]),
    );
  }
}

class ButtonSection extends StatelessWidget {
  const ButtonSection({
    Key? key,
  }) : super(key: key);

  final _colorPrimary = Colors.lightBlue;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 15),
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
        Column(children: [
          Icon(Icons.phone, color: _colorPrimary),
          Text('Call'.toUpperCase(),
              style: TextStyle(color: _colorPrimary, fontSize: 10))
        ]),
        Column(children: [
          Icon(Icons.navigation, color: _colorPrimary),
          Text('Route'.toUpperCase(),
              style: TextStyle(color: _colorPrimary, fontSize: 10))
        ]),
        Column(children: [
          Icon(Icons.share, color: _colorPrimary),
          Text('Share'.toUpperCase(),
              style: TextStyle(color: _colorPrimary, fontSize: 10))
        ])
      ]),
    );
  }
}

class Title extends StatelessWidget {
  const Title({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 10),
      padding: const EdgeInsets.all(15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    'Oeaschinen Lake Compground',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Text(
                    'Eu elit nulla elit do est quis in ea minim elit officia consequat sint',
                    style: TextStyle(
                        color: Colors.black45, overflow: TextOverflow.ellipsis),
                  ),
                ]),
          ),
          const SizedBox(
            width: 10,
          ),
          Row(
            children: const [
              Icon(Icons.star_rate, color: Colors.red),
              Text('41')
            ],
          )
        ],
      ),
    );
  }
}
