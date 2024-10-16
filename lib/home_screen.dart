import 'package:concentric_transition/page_view.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<Map<String, String>> pages = [
    {
      'image': 'assets/image1.png',
    },
    {
      'image': 'assets/image2.jpg',
    },
    {
      'image': 'assets/scoreSafeLogo.jpg',
    },
    {
      'image': 'assets/TipLogo.png',
    },
    {
      'image': 'assets/darziLogo.jpg',
    },
    {
      'image': 'assets/scoreSafeLogo.jpg',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ConcentricPageView(
        radius: 30,
        verticalPosition: 0.85,
        colors: const [Colors.white, Colors.greenAccent, Colors.teal,Colors.brown,Colors.black45],
        itemCount: pages.length,
        itemBuilder: (index) {
          return Container(
            width: 200, // Reduced width
            height: 200, // Reduced height
            alignment: Alignment.center, // Center the image
            child: Image.asset(
              pages[index]['image']!,
              fit: BoxFit.cover,
            ),
          );
        },
      ),
    );
  }
}
