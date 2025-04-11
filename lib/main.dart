import 'package:flutter/material.dart';

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
    return Scaffold(
      appBar: AppBar(
        title: Text('Points Counter'),
        backgroundColor: Colors.deepOrangeAccent,
      ),
      body: Counter(),
    );
  }
}

class Counter extends StatefulWidget {
  const Counter({super.key});

  @override
  State<Counter> createState() => _CounterState();
}

class _CounterState extends State<Counter> {
  int counterA = 0;
  int counterB = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: Row(
            children: [
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
                      counterA.toString(),
                      style: TextStyle(
                        fontSize: 100,
                        fontWeight: FontWeight.w100,
                        letterSpacing: -10,
                      ),
                    ),
                    SizedBox(
                      child: Column(
                        children: [
                          ElevatedButton(
                            onPressed: () {
                              setState(() {
                                counterA++;
                              });
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.deepOrangeAccent,
                            ),
                            child: Text('Add 1 Point'),
                          ),
                          ElevatedButton(
                            onPressed: () {
                              setState(() {
                                counterA += 2;
                              });
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.deepOrangeAccent,
                            ),
                            child: Text('Add 2 Point'),
                          ),
                          ElevatedButton(
                            onPressed: () {
                              setState(() {
                                counterA += 3;
                              });
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
                      counterB.toString(),
                      style: TextStyle(
                        fontSize: 100,
                        fontWeight: FontWeight.w100,
                        letterSpacing: -10,
                      ),
                    ),
                    SizedBox(
                      child: Column(
                        children: [
                          ElevatedButton(
                            onPressed: () {
                              setState(() {
                                counterB++;
                              });
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.deepOrangeAccent,
                            ),
                            child: Text('Add 1 Point'),
                          ),
                          ElevatedButton(
                            onPressed: () {
                              setState(() {
                                counterB += 2;
                              });
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.deepOrangeAccent,
                            ),
                            child: Text('Add 2 Point'),
                          ),
                          ElevatedButton(
                            onPressed: () {
                              setState(() {
                                counterB += 3;
                              });
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
        ElevatedButton(
          onPressed: () {
            setState(() {
              counterA = 0;
              counterB = 0;
            });
          },
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.deepOrangeAccent,
          ),
          child: Text('Reset'),
        ),
        SizedBox(height: 50),
      ],
    );
  }
}
