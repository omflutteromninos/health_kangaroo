import 'package:flutter/material.dart';
import 'package:hk/screens/mediciens_screen.dart';
class TestScreen extends StatefulWidget {
  const TestScreen({Key? key}) : super(key: key);

  @override
  State<TestScreen> createState() => _TestScreenState();
}

class _TestScreenState extends State<TestScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.red,
        height: 300,
        child: GridView.builder(

          scrollDirection: Axis.horizontal,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              childAspectRatio: 0.8,
              mainAxisSpacing: 10,
              crossAxisSpacing: 15,
              crossAxisCount: 2,
            ),
            itemCount: 9,
            itemBuilder: (BuildContext context, int index) {
              return Card(
                color: Colors.amber,
                child: Center(child: Text('$index')),
              );
            }
        ),
      ),
    );
  }
}
