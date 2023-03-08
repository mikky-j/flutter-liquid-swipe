import 'package:flutter/material.dart';
import 'package:liquid_swipe/liquid_swipe.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final page = [
    Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          stops: [0.1, 0.4, 0.8, 1],
          colors: [
            Color(0xFF4563DB),
            Color(0xFF5B16D0),
            Color(0xFF5036D5),
            Color(0xFF3594DD),
          ],
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          const CircleAvatar(
            radius: 70,
            backgroundImage: AssetImage("assets/fruit.jpg"),
          ),
          const SizedBox(
            height: 15,
          ),
          const Text(
            "Flutter Liquid Swipe Demo",
            style: TextStyle(
                fontWeight: FontWeight.bold, fontSize: 20, color: Colors.white),
          ),
          const SizedBox(
            height: 15,
          ),
          Card(
            margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 25),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20.0)),
            color: Colors.white,
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Row(
                children: const <Widget>[
                  Icon(
                    Icons.email,
                    color: Colors.black,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    "user@gmail.com",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 17,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
          ),
          Card(
            margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 25),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20.0)),
            color: Colors.white,
            child: Padding(
              padding: const EdgeInsets.all(15),
              child: Row(
                children: const <Widget>[
                  Icon(
                    Icons.lock,
                    color: Colors.black,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    "*******",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 17,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    ),
    Container(
      color: Colors.cyanAccent[100],
      child: Column(
        children: <Widget>[
          SizedBox(
            width: 420,
            child: Image.asset(
              "assets/food.jpeg",
              fit: BoxFit.cover,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              children: <Widget>[
                Text(
                  "Foods Item",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: Colors.blueGrey[800]),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          ListTile(
            leading: Container(
              width: 90,
              height: 150,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                  image: AssetImage("assets/pizza.jpeg"),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            title: const Text(
              "Pizza",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                  color: Colors.black),
            ),
            subtitle: const Text(
              "Pizza is the world’s greatest food. Nothing says “I love you,” “I’m sorry,” or “Let’s be friends,” better than pizza.",
              style: TextStyle(fontSize: 16, color: Colors.grey),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          ListTile(
            leading: Container(
              width: 90,
              height: 150,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                  image: AssetImage("assets/pasta.jpg"),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            title: const Text(
              "Pasta",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                  color: Colors.black),
            ),
            subtitle: const Text(
              "A super quick, healthy and delicious pasta that can de whipped up under\n15 minutes.",
              style: TextStyle(fontSize: 16, color: Colors.grey),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          ListTile(
            leading: Container(
              width: 90,
              height: 150,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                  image: AssetImage("assets/chili.jpeg"),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            title: const Text(
              "Chilli Potato",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                  color: Colors.black),
            ),
            subtitle: const Text(
              "Chilli potato is a Indo chinese starter made with fried potatoes tossed in spicy, slightly sweet & sour chilli sauce. ",
              style: TextStyle(fontSize: 16, color: Colors.grey),
            ),
          ),
        ],
      ),
    ),
    Container(
      color: const Color(0xFFE7D6F8),
      child: Column(
        children: <Widget>[
          const SizedBox(
            height: 10,
          ),
          Image.asset("assets/delivery_man.png"),
          const SizedBox(
            height: 30,
          ),
          const Text(
            'Order Success',
            style: TextStyle(
                fontSize: 22.0,
                color: Colors.black,
                fontWeight: FontWeight.bold),
            overflow: TextOverflow.ellipsis,
          ),
          const SizedBox(
            height: 10,
          ),
          const Text(
            "Now, you're connect directly\nwith your order, lets check the detail\nJust wait your service here",
            style: TextStyle(fontSize: 16.0, color: Colors.white),
            overflow: TextOverflow.ellipsis,
            textAlign: TextAlign.center,
          ),
        ],
      ),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: LiquidSwipe(
          pages: page,
          enableLoop: true,
          fullTransitionValue: 300,
          // enableSlideIcon: true,
          waveType: WaveType.liquidReveal,
          positionSlideIcon: 0.5,
        ),
      ),
    );
  }
}
