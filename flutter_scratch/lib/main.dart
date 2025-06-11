import 'package:flutter/material.dart';
import 'package:logging/logging.dart';

void main() {
  // Set up logging
  Logger.root.level = Level.ALL;
  Logger.root.onRecord.listen((record) {
    // You can customize this to log to a file or remote server
    debugPrint('${record.level.name}: ${record.time}: ${record.message}');
  });

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.teal,
          brightness: Brightness.dark,
        ),
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter Mapp'),
        centerTitle: false,
        // leading: Icon(Icons.login),
        // actions: [Text('fajojfdoaisjf'), Icon(Icons.abc_rounded)],
        // backgroundColor: Colors.teal,
      ),
      drawer: Drawer(
        child: Column(
          children: [
            DrawerHeader(child: Text('Drawer')),
            ListTile(title: Text('Logout')),
          ],
        ),
      ),
      floatingActionButton: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          FloatingActionButton(
            onPressed: () {
              Logger('FloatingActionButton').info("aaaaa");
            },
            child: Icon(Icons.add),
          ),
          SizedBox(height: 10.0),
          FloatingActionButton(
            onPressed: () {
              Logger('FloatingActionButton').info("aaaaa");
            },
            child: Icon(Icons.add),
          ),
        ],
      ),
      body: Center(child: Text(currentIndex == 0 ? '1' : '2')),
      bottomNavigationBar: NavigationBar(
        destinations: [
          NavigationDestination(icon: Icon(Icons.home), label: 'Home'),
          NavigationDestination(icon: Icon(Icons.person), label: 'Profile'),
        ],
        onDestinationSelected: (int value) {
          setState(() {
            currentIndex = value;
          });
        },
        selectedIndex: currentIndex,
      ),
    );
  }
}
