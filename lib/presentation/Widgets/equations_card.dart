import 'package:flutter/material.dart';
import 'package:flutter_application_assignmnetapp/presentation/Screens/Equations/equatiion_solution_screen.dart';
import 'package:flutter_tex/flutter_tex.dart';

class HeadingCard extends StatelessWidget {
  // ignore: prefer_typing_uninitialized_variables
  final text;
  final int index;
  const HeadingCard({super.key, required this.text, required this.index});

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
              child: TeXViewDocument(text[index][0]),
            ),
          ),
          Container(
            alignment: Alignment.bottomRight,
            child: IconButton(
                onPressed: () {
                  //navigate to next page

                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => EquationSoloutionScreen(
                              solution: text[index][1],
                            )),
                  );
                },
                icon: const Icon(
                  Icons.arrow_forward_ios,
                  color: Colors.green,
                )),
          )
        ],
      ),
    );
  }
}
