import 'package:flutter/material.dart';

import '../widgets/template.dart';

class FirstPage extends StatelessWidget {
  const FirstPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            vertical: 10,
            horizontal: 15,
          ),
          child: Column(
            children: [
              const Row(
                children: [
                  Icon(Icons.menu),
                  const SizedBox(width: 65),
                  Text(
                    'Creed AntiVirus',
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                ],
              ),
              Image.asset('assets/images/image.png'),
              const SizedBox(height: 20),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Phone Boosters',
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                  Text(
                    'See All',
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              Container(
                height: 200,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: const [
                    Template(
                        imageUrl: 'assets/images/img.png',
                        text1: 'Junk Files',
                        text2: '60%',
                        color: Colors.deepPurple),
                    Template(
                      imageUrl: 'assets/images/set.png',
                      text1: 'Phone Cooler',
                      text2: '20 C',
                      color: Colors.orange,
                    ),
                    Template(
                      imageUrl: 'assets/images/image.png',
                      text1: 'Anti Virus',
                      text2: 'None',
                      color: Colors.blue,
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
