import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => HomeScreenState();
}

class HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Container(
          padding: const EdgeInsets.all(10.0),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(100),
            child: const Image(
              image: AssetImage("assets/person.jpg"),
              height: 30,
              width: 30,
              fit: BoxFit.cover,
            ),
          ),
        ),
        title: Container(
          padding: const EdgeInsets.symmetric(horizontal: 5),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(7), color: Colors.grey[300]),
          child: const Row(
            children: [
              Icon(
                Icons.search,
                size: 20,
              ),
              SizedBox(
                width: 7,
              ),
              Expanded(
                child: TextField(
                  decoration: InputDecoration(
                      hintText: "Search",
                      hintStyle: TextStyle(fontSize: 14),
                      border: InputBorder.none),
                ),
              ),
            ],
          ),
        ),
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.edit_square)),
          IconButton(onPressed: () {}, icon: const Icon(Icons.chat)),
          const SizedBox(
            width: 20,
          )
        ],
        toolbarHeight: kToolbarHeight,
      ),
    );
  }
}
