import 'package:flutter/material.dart';
import 'package:formomma/screens/models/questions.dart';

class FaqScreen extends StatefulWidget {
  const FaqScreen({Key? key}) : super(key: key);

  @override
  State<FaqScreen> createState() => _FaqScreenState();
}

class _FaqScreenState extends State<FaqScreen> {
  List<Questions> _questions = <Questions>[
    Questions(question: 'question1', answer: 'answer1'),
    Questions(question: 'question2', answer: 'answer2'),
    Questions(question: 'question3', answer: 'answer3'),
    Questions(question: 'question4', answer: 'answer4'),
    Questions(question: 'question5', answer: 'answe5'),
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('FAQ'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ExpansionTile(
          title: Text('afd'),
          leading: Icon(Icons.home),
          subtitle: Text('subtitle'),
          children: [
            Text('hello how are you , are you fine')
          ],
        ),
      ),
    );
    // Column(
    //   children: [
    //     ExpansionPanelList(
    //       animationDuration: Duration(seconds: 1),
    //       expandedHeaderPadding:
    //       EdgeInsets.symmetric(horizontal: 16, vertical: 16),
    //       dividerColor: Colors.blueGrey,
    //       expansionCallback: (panelIndex, isExpanded) {
    //         setState(() {
    //           _questions[panelIndex].expanded = !isExpanded;
    //         });
    //       },
    //       children: _questions.map((Questions question) {
    //         return ExpansionPanel(
    //           isExpanded: question.expanded,
    //           canTapOnHeader: true,
    //           headerBuilder: (context, isExpanded) {
    //             return Text(question.question);
    //           },
    //           body: Text(question.answer),
    //         );
    //       }).toList(),
    //     ),
    //   ],
    // ),
  }
}

