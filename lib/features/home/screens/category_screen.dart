import 'package:antivirus_3/features/home/widgets/template.dart';
import 'package:flutter/material.dart';

class CategoryScreen extends StatelessWidget {
  const CategoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
          child: Column(
            children: [
              Row(
                children: [
                  Icon(Icons.menu),
                  SizedBox(width: 70),
                  Text(
                    'Category',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  )
                ],
              ),
              SizedBox(height: 20),
              Text(
                'Select the category according to what you',
                style: TextStyle(
                  fontSize: 15,
                  color: Colors.purple,
                ),
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Template(
                      height: 250,
                      width: 150,
                      imageUrl: 'assets/images/img.png',
                      text1: 'Junk Files',
                      text2: '60%',
                      color: Colors.purple),
                  Template(
                      height: 250,
                      width: 150,
                      imageUrl: 'assets/images/img.png',
                      text1: 'Junk Files',
                      text2: '60%',
                      color: Colors.blue),
                ],
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Template(
                      height: 250,
                      width: 150,
                      imageUrl: 'assets/images/img.png',
                      text1: 'Junk Files',
                      text2: '60%',
                      color: Colors.orange),
                  Template(
                      height: 250,
                      width: 150,
                      imageUrl: 'assets/images/img.png',
                      text1: 'Junk Files',
                      text2: '60%',
                      color: Colors.grey),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
