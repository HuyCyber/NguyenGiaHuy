import 'package:flutter/material.dart';

class SeeAllPage extends StatelessWidget {
  const SeeAllPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Categories', style: TextStyle(fontSize: 20, fontWeight: FontWeight.normal,color: Colors.white),),
        backgroundColor: Colors.blueAccent,
      ),
      body: const Center(
        child: Text(
          'Đây là trang See All!',
          style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold, color: Colors.white),
        ),
      ),
    );
  }
}

