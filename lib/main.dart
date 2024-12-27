import 'package:flutter/material.dart';

void main() {
  runApp(const CounterBasketApp());
}

class CounterBasketApp extends StatelessWidget {
  const CounterBasketApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.amberAccent,
          title: const Text('Counter Basket Ball'),
        ),
        body: const HomePage(),
      ),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int counterTeamA = 0;

  int counterTeamB = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 60,
        ),
        Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
          Column(
            children: [
              const Text(
                'Taem A',
                style: TextStyle(fontSize: 40),
              ),
              Text(
                '$counterTeamA',
                style: const TextStyle(
                  fontSize: 140,
                ),
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.amberAccent,
                ),
                onPressed: () {
                  setState(() {
                    counterTeamA++;
                  });
                },
                child: const Text('Add 1 Point'),
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.amberAccent,
                ),
                onPressed: () {
                  setState(() {
                    counterTeamA += 2;
                  });
                },
                child: const Text('Add 2 Point'),
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.amberAccent,
                ),
                onPressed: () {
                  setState(() {
                    counterTeamA += 3;
                  });
                },
                child: const Text('Add 3 Point'),
              ),
            ],
          ),
          const SizedBox(
            height: 400,
            child: VerticalDivider(
              color: Colors.grey,
            ),
          ),
          Column(
            children: [
              const Text(
                'Taem B',
                style: TextStyle(fontSize: 40),
              ),
              Text(
                '$counterTeamB',
                style: const TextStyle(
                  fontSize: 140,
                ),
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.amberAccent,
                ),
                onPressed: () {
                  setState(() {
                    counterTeamB++;
                  });
                },
                child: const Text('Add 1 Point'),
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.amberAccent,
                ),
                onPressed: () {
                  setState(() {
                    counterTeamB += 2;
                  });
                },
                child: const Text('Add 2 Point'),
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.amberAccent,
                ),
                onPressed: () {
                  setState(() {
                    counterTeamB += 3;
                  });
                },
                child: const Text('Add 3 Point'),
              ),
            ],
          ),
        ]),
        const SizedBox(
          height: 20,
        ),
        ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.amberAccent,
          ),
          onPressed: () {
            setState(() {
              counterTeamB = 0;
              counterTeamA = 0;
            });
          },
          child: const Text('Reast'),
        ),
      ],
    );
  }
}
