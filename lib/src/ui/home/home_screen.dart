import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Color(0xFF5374E8),
        title: Text("Xisobchi",style: TextStyle(color: Colors.white),),
      ),
      // backgroundColor: Color(0xFF5374E8),
      backgroundColor: Color(0xFFF1F4FF),
      body: Column(
        children: [
          Container(
            width: double.infinity,
            height: 150,
            decoration: BoxDecoration(
                color: Color(0xFF5374E8),
              borderRadius: BorderRadius.vertical(
                bottom: Radius.circular(25)
              )
            ),
          ),
        ],
      ),
    );
  }
}
