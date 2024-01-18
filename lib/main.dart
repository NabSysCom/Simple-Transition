import 'package:flutter/material.dart';
import 'package:flutter_animate_001/pluggens/simple_transition.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.blue.shade500,
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: false,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    double wdth = (MediaQuery.of(context).size.width / 3) - 20;
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30.0, vertical: 20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SimpleTransition(
                    Container(
                      width: wdth,
                      color: Colors.blue.shade100,
                      padding: const EdgeInsets.all(10.0),
                      child: const Center(
                        child: Text('UP LEFT'),
                      ),
                    ),
                    move: Move.upLeft,
                  ),
                  SimpleTransition(
                    Container(
                      width: wdth,
                      color: Colors.yellow.shade100,
                      padding: const EdgeInsets.all(10.0),
                      child: const Center(
                        child: Text('TOP'),
                      ),
                    ),
                    move: Move.up,
                    amount: 20,
                    duration: 2,
                  ),
                  SimpleTransition(
                    Container(
                      width: wdth,
                      color: Colors.green.shade100,
                      padding: const EdgeInsets.all(10.0),
                      child: const Center(child: Text('UP RIGHT')),
                    ),
                    move: Move.upRight,
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SimpleTransition(
                    Container(
                      width: wdth,
                      color: Colors.brown.shade100,
                      padding: const EdgeInsets.all(10.0),
                      child: const Center(
                        child: Text('LEFT'),
                      ),
                    ),
                    move: Move.left,
                  ),
                  SimpleTransition(
                    Container(
                      width: wdth,
                      color: Colors.white,
                      padding: const EdgeInsets.all(10.0),
                      child: const Center(
                        child: Text('None'),
                      ),
                    ),
                    move: Move.none,
                  ),
                  SimpleTransition(
                    Container(
                      width: wdth,
                      color: Colors.orange.shade100,
                      padding: const EdgeInsets.all(10.0),
                      child: const Center(
                        child: Text('RIGHT'),
                      ),
                    ),
                    move: Move.right,
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SimpleTransition(
                    Container(
                      width: wdth,
                      color: Colors.pink.shade100,
                      padding: const EdgeInsets.all(10.0),
                      child: const Center(
                        child: Text('DOWN LEFT'),
                      ),
                    ),
                    move: Move.downLeft,
                  ),
                  SimpleTransition(
                    Container(
                      width: wdth,
                      color: Colors.cyan.shade100,
                      padding: const EdgeInsets.all(10.0),
                      child: const Center(
                        child: Text('DOWN'),
                      ),
                    ),
                    move: Move.down,
                    amount: 20,
                    duration: 2,
                  ),
                  SimpleTransition(
                    Container(
                      width: wdth,
                      color: Colors.purple.shade100,
                      padding: const EdgeInsets.all(10.0),
                      child: const Center(
                        child: Text('DOWN RIGHT'),
                      ),
                    ),
                    move: Move.downRight,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
