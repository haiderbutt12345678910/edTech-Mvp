import 'package:flutter/material.dart';
import 'package:flutter_tex/flutter_tex.dart';

class GkCard extends StatelessWidget {
  // ignore: prefer_typing_uninitialized_variables
  final String text;

  const GkCard({
    super.key,
    required this.text,
  });

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
                left: size.width * .03,
                right: size.width * .03,
                top: size.width * .02),
            child: TeXView(
              renderingEngine: const TeXViewRenderingEngine.katex(),
              child: TeXViewDocument(text),
            ),
          ),
        ],
      ),
    );
  }
}
