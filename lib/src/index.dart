import 'package:flutter/material.dart';

class FlutterMonet extends StatelessWidget {
  const FlutterMonet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Material App Bar'),
        ),
        body: const Center(
          child: SizedBox(
            child: Text('Hello World'),
          ),
        ),
      ),
    );
  }
}
