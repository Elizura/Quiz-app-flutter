import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

// class QuestionCard extends StatefulWidget {
//   const QuestionCard({
//     super.key,
//     required this.question,
//     required this.index,
//     required this.questionLength,
//   });

//   final question;
//   final int index;
//   final int questionLength;

//   @override
//   State<QuestionCard> createState() => _QuestionCardState();
// }

// class _QuestionCardState extends State<QuestionCard> {
//   @override
//   List? choiceAnswer;
//   void initState() {
//     super.initState();
//     choiceAnswer = List.generate(5, (index) => 'Question number ${index}');
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       children: [
//         ListTile(
//           trailing: Radio(
//             groupValue: 0,
//             value: 0,
//             onChanged: (value) => {},
//           ),
//           tileColor: Colors.white,
//           title: Text('UTUY'),
//         ),
//         SizedBox(
//           height: 8.0,
//         ),
//         ListTile(
//           trailing: Radio(
//             groupValue: 0,
//             value: 0,
//             onChanged: (value) => {},
//           ),
//           tileColor: Colors.white,
//           title: Text('UTUY'),
//         ),
//       ],
//     );
//   }
// }
