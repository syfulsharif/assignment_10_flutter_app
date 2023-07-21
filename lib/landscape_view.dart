import 'package:flutter/material.dart';
import 'package:livetest10/card.dart';

class LandScapeView extends StatefulWidget {
  const LandScapeView({super.key});

  @override
  State<LandScapeView> createState() => _LandScapeViewState();
}

class _LandScapeViewState extends State<LandScapeView> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: SizedBox(
        width: double.infinity,
        child: Wrap(
          alignment: WrapAlignment.center,
          children: [
            myHalfWidthCard(),
            myHalfWidthCard(),
            myHalfWidthCard(),
            myHalfWidthCard(),
            myHalfWidthCard(),
            myHalfWidthCard(),
            myHalfWidthCard(),
          ],
        ),
      ),
    );
  }
}