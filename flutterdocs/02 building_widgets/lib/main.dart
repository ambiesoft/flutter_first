// import 'dart:io';

import 'package:flutter/material.dart';
// import 'package:window_size/window_size.dart';

class PaddedText extends StatelessWidget {
  const PaddedText({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: const Text('Hello, World!'),
    );
  }
}

void main() {
  // if (Platform.isWindows || Platform.isLinux || Platform.isMacOS) {
  //   WidgetsFlutterBinding.ensureInitialized();
  //   setWindowTitle('Padded Text Example');
  //   setWindowMinSize(const Size(400, 800));
  //   setWindowMaxSize(const Size(400, 800));
  //   setWindowFrame(const Rect.fromLTWH(100, 100, 400, 800));
  // }
  runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('Padded Text Example')),
        body: const Center(child: PaddedText()),
      ),
    ),
  );
}
