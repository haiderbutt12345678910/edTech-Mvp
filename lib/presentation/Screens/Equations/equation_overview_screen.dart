import 'package:flutter/material.dart';
import 'package:flutter_application_assignmnetapp/const.dart';

import '../../Widgets/equations_card.dart';

class EquationOverViewScreen extends StatelessWidget {
  const EquationOverViewScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Container(
        margin: EdgeInsets.only(top: size.width * .005),
        width: size.width,
        height: size.height,
        child: ListView.builder(
            padding: EdgeInsets.symmetric(vertical: size.height * .01),
            itemCount: equationList.length,
            itemBuilder: (ctx, index) {
              return HeadingCard(text: equationList, index: index);
            }));
  }
}
