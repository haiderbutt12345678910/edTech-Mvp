import 'package:flutter/material.dart';
import 'package:flutter_application_assignmnetapp/Models/quizmodel.dart';
import 'package:flutter_tex/flutter_tex.dart';

class McqsCard extends StatelessWidget {
  final QuizModel quizModel;

  const McqsCard({super.key, required this.quizModel});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Card(
      shadowColor: Colors.grey,
      color: Colors.white,
      margin: EdgeInsets.symmetric(
          horizontal: size.width * .02, vertical: size.width * .02),
      elevation: 10,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: EdgeInsets.only(
                left: size.width * .02,
                right: size.width * .02,
                top: size.width * .01),
            child: TeXView(
              renderingEngine: const TeXViewRenderingEngine.katex(),
              child: TeXViewDocument(quizModel.feedback),
            ),
          ),
          for (int i = 0; i < quizModel.options.length; i++)
            Padding(
              padding: EdgeInsets.only(
                  left: size.width * .02,
                  right: size.width * .02,
                  top: size.width * .01),
              child: TeXView(
                renderingEngine: const TeXViewRenderingEngine.katex(),
                child: TeXViewDocument(quizModel.options[i]),
              ),
            ),
        ],
      ),
    );
  }
}
