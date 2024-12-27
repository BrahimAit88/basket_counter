import 'package:basket_counter/cubit/counter_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const CounterBasketApp());
}

class CounterBasketApp extends StatelessWidget {
  const CounterBasketApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CounterCubit(),
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: HomePage(),
      ),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<CounterCubit, CounterState>(
      listener: (context, state) {},
      builder: (context, state) {
        return Scaffold(
          appBar: AppBar(
            centerTitle: true,
            backgroundColor: Colors.amberAccent,
            title: const Text('Counter Basket Ball'),
          ),
          body: Column(
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
                      '${BlocProvider.of<CounterCubit>(context).teamANumber}',
                      style: const TextStyle(
                        fontSize: 140,
                      ),
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.amberAccent,
                      ),
                      onPressed: () {
                        BlocProvider.of<CounterCubit>(context)
                            .counterIncriment(team: 'A', number: 1);
                      },
                      child: const Text('Add 1 Point'),
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.amberAccent,
                      ),
                      onPressed: () {
                        BlocProvider.of<CounterCubit>(context)
                            .counterIncriment(team: 'A', number: 2);
                      },
                      child: const Text('Add 2 Point'),
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.amberAccent,
                      ),
                      onPressed: () {
                        BlocProvider.of<CounterCubit>(context)
                            .counterIncriment(team: 'A', number: 3);
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
                      '${BlocProvider.of<CounterCubit>(context).teamBNumber}',
                      style: const TextStyle(
                        fontSize: 140,
                      ),
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.amberAccent,
                      ),
                      onPressed: () {
                        BlocProvider.of<CounterCubit>(context)
                            .counterIncriment(team: 'B', number: 1);
                      },
                      child: const Text('Add 1 Point'),
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.amberAccent,
                      ),
                      onPressed: () {
                        BlocProvider.of<CounterCubit>(context)
                            .counterIncriment(team: 'B', number: 2);
                      },
                      child: const Text('Add 2 Point'),
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.amberAccent,
                      ),
                      onPressed: () {
                        BlocProvider.of<CounterCubit>(context)
                            .counterIncriment(team: 'b', number: 3);
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
                  BlocProvider.of<CounterCubit>(context).restarTeam();
                },
                child: const Text('Reast'),
              ),
            ],
          ),
        );
      },
    );
  }
}
