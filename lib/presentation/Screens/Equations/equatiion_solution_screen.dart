import 'package:flutter/material.dart';
import 'package:flutter_tex/flutter_tex.dart';

class EquationSoloutionScreen extends StatelessWidget {
  final String solution;
  const EquationSoloutionScreen({super.key, required this.solution});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: const Text("Solution"),
      ),
      body: SizedBox(
        width: size.width,
        height: size.height,
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.only(
                left: size.width * .02,
                right: size.width * .02,
                top: size.width * .01),
            child: TeXView(
              renderingEngine: const TeXViewRenderingEngine.katex(),
              child: TeXViewDocument(solution),
            ),
          ),
        ),
      ),
    );
  }
}
