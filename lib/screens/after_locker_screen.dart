import 'package:flutter/material.dart';

class AfterLoker extends StatefulWidget {
  const AfterLoker({Key? key}) : super(key: key);

  @override
  State<AfterLoker> createState() => _AfterLokerState();
}

class _AfterLokerState extends State<AfterLoker> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        title: const Text('Locker Opened'),
      ),
    );
  }
}
