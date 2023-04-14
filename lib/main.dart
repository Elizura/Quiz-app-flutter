import 'package:flutter/material.dart';
import 'package:practice/constants.dart';
import 'package:practice/screens/quizpage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                  'Let\'s Play Game'),
              SizedBox(
                height: 20,
              ),
              SizedBox(
                  height: 30,
                  width: 300,
                  child: ElevatedButton(
                      onPressed: () => {
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                  builder: (context) => QuizPage()),
                            )
                          },
                      child: Text('Start'))),
            ],
          ),
        ),
      ),
      backgroundColor: kBackgroundColor,
    );
  }
}
