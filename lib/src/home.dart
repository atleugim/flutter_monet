import 'package:flutter/material.dart';
import 'package:monet/monet.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  MonetProvider? _monet;

  List<MonetPalette> get palettes {
    // This call will get the platform wallpaper colors if it runs on Android,
    // else it will derive a palette based on Colors.purple
    final MonetColors colors = _monet!.getColors(Colors.purple);

    return [
      colors.accent1,
      colors.accent2,
      colors.accent3,
      colors.neutral1,
      colors.neutral2,
    ];
  }

  Future<void> _initMonet() async {
    _monet = await MonetProvider.newInstance();
    _monet!.addListener(() => setState(() {}));
    setState(() {});
  }

  @override
  void initState() {
    _initMonet();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
          children: _monet == null
              ? [
                  const Expanded(
                    child: Center(
                      child: Text(
                        "Monet isn't ready yet.",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 20.0,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                ]
              : [
                  Expanded(
                    child: Container(
                      padding: const EdgeInsets.all(20.0),
                      color: palettes.first.shade500,
                      alignment: Alignment.center,
                      child: const Text(
                        'Flutter Monet Theme Engine',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20.0,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      padding: const EdgeInsets.all(20.0),
                      alignment: Alignment.center,
                      child: Text(
                        "Material You's monet theme engine from Android 12 now on Flutter",
                        style: TextStyle(
                          color: palettes.first.shade300,
                          fontSize: 20.0,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  )
                ]),
    );
  }
}
