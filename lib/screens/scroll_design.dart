import 'package:flutter/material.dart';

class ScrollDesignScreen extends StatelessWidget {
  const ScrollDesignScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                stops: [0.5, 0.5],
                colors: [Color(0xff5EE8C5), Color(0xff30BAD6)])),
        child: PageView(
            scrollDirection: Axis.vertical, children: const [Page1(), Page2()]),
      ),
    );
  }
}

class Page1 extends StatelessWidget {
  const Page1({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(children: [Background(), MainContent()]);
  }
}

class MainContent extends StatelessWidget {
  const MainContent({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const textStyle = TextStyle(
        fontWeight: FontWeight.bold, fontSize: 50, color: Colors.white);

    return SafeArea(
      bottom: false,
      child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        const SizedBox(height: 50),
        const Text('11°', style: textStyle),
        const Text('Miércoles', style: textStyle),
        Expanded(child: Container()),
        const Icon(Icons.keyboard_arrow_down, size: 100, color: Colors.white),
      ]),
    );
  }
}

class Background extends StatelessWidget {
  const Background({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        color: const Color(0xff30BAD6),
        height: double.infinity,
        alignment: Alignment.topCenter,
        child: const Image(image: AssetImage('assets/scroll-1.png')));
  }
}

class Page2 extends StatelessWidget {
  const Page2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xff30BAD6),
      child: Center(
        child: ElevatedButton(
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(Colors.amber),
            shape: MaterialStateProperty.all(StadiumBorder()),
          ),
          child: const Padding(
            padding: EdgeInsets.symmetric(horizontal: 15.0, vertical: 15.0),
            child: Text(
              'Bienvenidos',
              style: TextStyle(color: Colors.white, fontSize: 20.0),
            ),
          ),
          onPressed: () {},
        ),
      ),
    );
  }
}
