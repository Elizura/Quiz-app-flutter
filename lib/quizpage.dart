import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:practice/question_data.dart';
import 'package:practice/questioncard.dart';

import 'constants.dart';

class QuizPage extends StatefulWidget {
  const QuizPage({super.key});

  @override
  State<QuizPage> createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                    style: TextStyle(
                        color: kTextColor,
                        fontSize: 22,
                        fontWeight: FontWeight.bold),
                    'Question 1/4'),
                // Spacer(),
                Row(
                  children: [
                    IconButton(
                        onPressed: () => {}, icon: Icon(Icons.arrow_back_ios)),
                    const Text('1/4'),
                    IconButton(
                        onPressed: () => {},
                        icon: const Icon(Icons.arrow_forward_ios)),
                  ],
                )
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            const Divider(
              thickness: 5,
            ),
            const SizedBox(
              height: 10,
            ),
            const QuestionCard(),
          ],
        ),
      )),
    );
  }
}

class QuestionCard extends StatefulWidget {
  const QuestionCard({super.key});

  @override
  State<QuestionCard> createState() => _QuestionCardState();
}

class _QuestionCardState extends State<QuestionCard> {
  List? questions = sample_data;
  @override
  Widget build(BuildContext context) {
    return ListTile(
        tileColor: Colors.white, title: Text(sample_data[0].question));
  }
  //   return ListView(
  //     padding: const EdgeInsets.all(8),
  //     children: <Widget>[
  //       Container(
  //         height: 50,
  //         color: Colors.amber[600],
  //         child: const Center(child: Text('Entry A')),
  //       ),
  //       Container(
  //         height: 50,
  //         color: Colors.amber[500],
  //         child: const Center(child: Text('Entry B')),
  //       ),
  //       Container(
  //         height: 50,
  //         color: Colors.amber[100],
  //         child: const Center(child: Text('Entry C')),
  //       ),
  //     ],
  //   );
  // }
}
