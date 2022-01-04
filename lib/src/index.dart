import 'package:flutter/material.dart';
import 'package:flutter_monet/src/home.dart';

class FlutterMonet extends StatelessWidget {
  const FlutterMonet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Material App',
      debugShowCheckedModeBanner: false,
      home: Home(),
    );
  }
}
