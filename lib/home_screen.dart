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
                borderRadius: BorderRadius.circular(7),
                color: Colors.grey[300]),
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
        bottomNavigationBar: BottomAppBar(
          color: Colors.black,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              bottomAppContent(Icons.home, "Home", false),
              bottomAppContent(Icons.play_circle_fill, "Video", false),
              bottomAppContent(Icons.group, "Network", true),
              bottomAppContent(
                  Icons.notifications_active, "Notification", true),
              bottomAppContent(Icons.work, "Job", false)
            ],
          ),
        ));
  }

  Widget bottomAppContent(IconData icon, String label, bool showBadge) {
    return Stack(
      children: [
        Column(
          children: [
            Icon(
              icon,
              color: Colors.white54,
            ),
            Text(
              label,
              style: const TextStyle(color: Colors.white54),
            )
          ],
        ),
        Visibility(
          visible: showBadge,
          child: Positioned(
            right: 0,
            top: 0,
            child: Container(
              padding: const EdgeInsets.all(3),
              width: 20,
              height: 20,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100), color: Colors.red),
              child: const Text(
                "4",
                style: TextStyle(color: Colors.white, fontSize: 10),
              ),
            ),
          ),
        )
      ],
    );
  }
}
