import 'package:flores/widgets/Header.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: const [
          Header(),
          HomePageBody(),
        ],
      ),
    );
  }
}

class HomePageBody extends StatelessWidget {
  const HomePageBody({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SingleChildScrollView(
        child: Container(
          constraints: const BoxConstraints(maxWidth: 950),
          child: Column(
            children: const [
              Destaques(),
              Separator(),
              FlowersList(),
            ],
          ),
        ),
      ),
    );
  }
}

class Destaques extends StatelessWidget {
  const Destaques({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 40),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(
            "assets/box.png",
            height: 540,
            width: 580,
            fit: BoxFit.cover,
          ),
          const SizedBox(width: 10),
          Column(
            children: [
              Image.asset(
                "assets/romantico.png",
                height: 360,
                width: 360,
                fit: BoxFit.cover,
              ),
              const SizedBox(height: 10),
              Row(
                children: [
                  Image.asset(
                    "assets/bebe.png",
                    height: 170,
                    width: 175,
                    fit: BoxFit.cover,
                  ),
                  const SizedBox(width: 10),
                  Image.asset(
                    "assets/aniversario.png",
                    height: 170,
                    width: 175,
                    fit: BoxFit.cover,
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class Separator extends StatelessWidget {
  const Separator({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 40),
      child: Stack(
        children: [
          Container(
            margin: const EdgeInsets.only(top: 20),
            height: 1,
            color: Colors.grey,
          ),
          Center(
            child: Container(
              height: 40,
              width: 150,
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(
                  color: Colors.grey,
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    "We Like",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(width: 15),
                  Image.asset(
                    "assets/flower.png",
                    height: 35,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class FlowersList extends StatelessWidget {
  const FlowersList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconButton(
          onPressed: () {},
          icon: const Icon(Icons.keyboard_arrow_left),
        ),
        Expanded(
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: const [
                FlowerItem(
                  image: "assets/pink.png",
                  name: "Buque Charme",
                  value: "R\$ 305,00",
                ),
                FlowerItem(
                  image: "assets/rosas.png",
                  name: "Special Roses",
                  value: "R\$ 494,00",
                ),
                FlowerItem(
                  image: "assets/buque.png",
                  name: "Amore Mio",
                  value: "R\$ 171,00",
                ),
                FlowerItem(
                  image: "assets/girassol.png",
                  name: "Girassol",
                  value: "R\$ 138,00",
                ),
                FlowerItem(
                  image: "assets/cesta.png",
                  name: "Garden Roses",
                  value: "R\$ 438,00",
                ),
                FlowerItem(
                  image: "assets/love.png",
                  name: "Amor Perfeito",
                  value: "R\$ 105,00",
                ),
              ],
            ),
          ),
        ),
        IconButton(
          onPressed: () {},
          icon: const Icon(Icons.keyboard_arrow_right),
        ),
      ],
    );
  }
}

class FlowerItem extends StatelessWidget {
  const FlowerItem({
    Key? key,
    required this.image,
    required this.name,
    required this.value,
  }) : super(key: key);
  final String image;
  final String name;
  final String value;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 40),
      //height: 250,
      width: 220,
      child: Column(
        children: [
          Image.asset(
            image,
            height: 200,
          ),
          const SizedBox(height: 10),
          Text(
            name,
            //textAlign: TextAlign.center,
            style: const TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 5),
          Container(
            height: 1,
            width: 30,
            color: Colors.black,
          ),
          const SizedBox(height: 10),
          Text(
            value,
            style: const TextStyle(
              color: Color(0xff7B7877),
            ),
          ),
        ],
      ),
    );
  }
}
