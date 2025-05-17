import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'cubits/counter_cubit.dart';
import 'cubits/counter_state.dart';

void main() {
  runApp(PointsCounterApp());
}

class PointsCounterApp extends StatelessWidget {
  const PointsCounterApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Basketball Score Counter App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(useMaterial3: false),
      home: Home(),
    );
  }
}

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CounterCubit(),
      child: Scaffold(
        appBar: AppBar(
          title: Text('Points Counter'),
          backgroundColor: Colors.deepOrangeAccent,
        ),
        body: Counter(),
      ),
    );
  }
}

class Counter extends StatelessWidget {
  const Counter({super.key});

  @override
  Widget build(BuildContext context) {
    CounterCubit counterState = BlocProvider.of<CounterCubit>(context);
    return BlocConsumer<CounterCubit, CounterState>(
      // ! We don't need to use this function because our application is very simple and we don't need to specify the return status from CounterCubit.
      listener: (context, state) {},
      builder: (context, state) {
        return Column(
          children: [
            Expanded(
              child: Row(
                children: [
                  // * Team A section.
                  Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(
                          'Team A',
                          style: TextStyle(
                            fontSize: 36,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          counterState.counterA.toString(),
                          style: TextStyle(
                            fontSize: 100,
                            fontWeight: FontWeight.w100,
                            letterSpacing: -10,
                          ),
                        ),
                        SizedBox(
                          child: Column(
                            children: [
                              // * Add to team A one point.
                              ElevatedButton(
                                onPressed: () {
                                  counterState.incrementTeam(
                                    team: 'A',
                                    pointNumber: 1,
                                  );
                                },
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.deepOrangeAccent,
                                ),
                                child: Text('Add 1 Point'),
                              ),
                              // * Add to team A two point.
                              ElevatedButton(
                                onPressed: () {
                                  counterState.incrementTeam(
                                    team: 'A',
                                    pointNumber: 2,
                                  );
                                },
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.deepOrangeAccent,
                                ),
                                child: Text('Add 2 Point'),
                              ),
                              // * Add to team A three point.
                              ElevatedButton(
                                onPressed: () {
                                  counterState.incrementTeam(
                                    team: 'A',
                                    pointNumber: 3,
                                  );
                                },
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.deepOrangeAccent,
                                ),
                                child: Text('Add 3 Point'),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  VerticalDivider(
                    width: 10,
                    color: Colors.black,
                    thickness: 1,
                    indent: 60,
                    endIndent: 60,
                  ),
                  // * Team B section.
                  Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(
                          'Team B',
                          style: TextStyle(
                            fontSize: 36,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          counterState.counterB.toString(),
                          style: TextStyle(
                            fontSize: 100,
                            fontWeight: FontWeight.w100,
                            letterSpacing: -10,
                          ),
                        ),
                        SizedBox(
                          child: Column(
                            children: [
                              // * Add to team B one point.
                              ElevatedButton(
                                onPressed: () {
                                  counterState.incrementTeam(
                                    team: 'B',
                                    pointNumber: 1,
                                  );
                                },
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.deepOrangeAccent,
                                ),
                                child: Text('Add 1 Point'),
                              ),
                              // * Add to team B two points.
                              ElevatedButton(
                                onPressed: () {
                                  counterState.incrementTeam(
                                    team: 'B',
                                    pointNumber: 2,
                                  );
                                },
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.deepOrangeAccent,
                                ),
                                child: Text('Add 2 Point'),
                              ),
                              // * Add to team B three point.
                              ElevatedButton(
                                onPressed: () {
                                  counterState.incrementTeam(
                                    team: 'b',
                                    pointNumber: 3,
                                  );
                                },
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.deepOrangeAccent,
                                ),
                                child: Text('Add 3 Point'),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 50),
            // * Reset button.
            ElevatedButton(
              onPressed: () {
                counterState.resetCounters();
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.deepOrangeAccent,
              ),
              child: Text('Reset'),
            ),
            SizedBox(height: 50),
          ],
        );
      },
    );
  }
}
