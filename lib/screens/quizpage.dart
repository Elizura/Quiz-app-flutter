import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:practice/screens/questioncard.dart';

import '../constants.dart';
import '../question_data.dart';

class QuizPage extends StatefulWidget {
  const QuizPage({super.key});

  @override
  State<QuizPage> createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {
  int index = 0;
  final questions = sample_data;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow,
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                    // ignore: prefer_const_constructors
                    style: TextStyle(
                        color: kTextColor,
                        fontSize: 22,
                        fontWeight: FontWeight.bold),
                    'Question ${index + 1}'),
                // Spacer(),
                Row(
                  children: [
                    IconButton(
                        onPressed: index == 0
                            ? null
                            : () {
                                setState(() {
                                  index--;
                                });
                              },
                        icon: Icon(Icons.arrow_back_ios)),
                    Text('${index + 1}/${questions.length}'),
                    IconButton(
                        onPressed: index == questions.length - 1
                            ? null
                            : () {
                                setState(() {
                                  index++;
                                });
                              },
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
            QuestionCard(
              index: index,
              yourchoice: '',
            ),
          ],
        ),
      )),
    );
  }
}

// ignore: must_be_immutable
class QuestionCard extends StatefulWidget {
  QuestionCard({super.key, required this.index, required this.yourchoice});
  final int index;
  String yourchoice;

  @override
  State<QuestionCard> createState() => _QuestionCardState();
}

class _QuestionCardState extends State<QuestionCard> {
  final List? questions = sample_data;
  late List choiceAnswer;

  @override
  void initState() {
    super.initState();
    choiceAnswer = List.generate(questions!.length, (index) => null);
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 24),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Expanded(
          child: Column(
            children: [
              ListTile(
                tileColor: Colors.white,
                title: Text(
                    '${widget.index}.  ${questions?[widget.index].question}'),
              ),
              Expanded(
                child: ListView.builder(
                  shrinkWrap: true,
                  itemCount: 4,
                  itemBuilder: (BuildContext context, int ind) {
                    return ListTile(
                      onTap: () {
                        setState(() {
                          choiceAnswer[widget.index] = ind;
                        });
                      },
                      trailing: Radio(
                          value: ind,
                          groupValue: choiceAnswer[widget.index],
                          onChanged: (value) {
                            setState(() {
                              choiceAnswer[widget.index] = ind;
                            });
                          }),
                      tileColor: Colors.white,
                      title: Text('${String.fromCharCode(ind + 65)}.  ' +
                          questions?[widget.index].options[ind]),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
//     return Expanded(
//       child: Container(
//         padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 24),
        // decoration: BoxDecoration(
        //   color: Colors.white,
        //   borderRadius: BorderRadius.circular(10),
        // ),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             ListView.builder(
//               shrinkWrap: true,
//               itemCount: 1,
//               itemBuilder: (BuildContext context, int index) {
//                 return ListTile(
//                   tileColor: Colors.white,
//                   title: Text(questions?[widget.index].question),
//                 );
//               },
//             ),

//             //   ListTile(
//             //       tileColor: Colors.white,
//             //       title: Text(questions?[widget.index].question)),
//             //   ListTile(
//             //     tileColor: Colors.white,
//             //     trailing:
//             //         Radio(value: 0, groupValue: 0, onChanged: (onChanged) => {}),
//             //     title: Text('A. ${questions?[widget.index].options[0]}'),
//             //   ),
//             //   ListTile(
//             //     tileColor: Colors.white,
//             //     trailing:
//             //         Radio(value: 0, groupValue: 0, onChanged: (onChanged) => {}),
//             //     title: Text('A. ${questions?[widget.index].options[0]}'),
//             //   ),
//             //   ListTile(
//             //     tileColor: Colors.white,
//             //     trailing:
//             //         Radio(value: 0, groupValue: 0, onChanged: (onChanged) => {}),
//             //     title: Text('A. ${questions?[widget.index].options[0]}'),
//             //   ),
//             //   ListTile(
//             //     tileColor: Colors.white,
//             //     trailing:
//             //         Radio(value: 0, groupValue: 0, onChanged: (onChanged) => {}),
//             //     title: Text('A. ${questions?[widget.index].options[0]}'),
//             //   ),
//           ],
//         ),
//       ),
//     );
//   }
//   //   return ListView(
//   //     padding: const EdgeInsets.all(8),
//   //     children: <Widget>[
//   //       Container(
//   //         height: 50,
//   //         color: Colors.amber[600],
//   //         child: const Center(child: Text('Entry A')),
//   //       ),
//   //       Container(
//   //         height: 50,
//   //         color: Colors.amber[500],
//   //         child: const Center(child: Text('Entry B')),
//   //       ),
//   //       Container(
//   //         height: 50,
//   //         color: Colors.amber[100],
//   //         child: const Center(child: Text('Entry C')),
//   //       ),
//   //     ],
//   //   );
//   // }
// }
