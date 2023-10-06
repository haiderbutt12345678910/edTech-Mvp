import 'package:flutter/material.dart';
import 'package:flutter_application_assignmnetapp/const.dart';
import 'package:flutter_application_assignmnetapp/presentation/Widgets/McqsWideget/mcqs_card.dart';

class McqsOverViewScreen extends StatelessWidget {
  const McqsOverViewScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Container(
        margin: EdgeInsets.only(top: size.width * .005),
        width: size.width,
        height: size.height,
        child: ListView.builder(
            padding: EdgeInsets.symmetric(vertical: size.height * .01),
            itemCount: question.length,
            itemBuilder: (ctx, index) {
              return McqsCard(
                quizModel: question[index],
              );
            }));
  }
}
