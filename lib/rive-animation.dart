import 'package:flutter/material.dart';
import 'package:rive/rive.dart';

class WitcherAnimationRive extends StatefulWidget {
  const WitcherAnimationRive({Key? key}) : super(key: key);

  @override
  State<WitcherAnimationRive> createState() => _WitcherAnimationRiveState();
}

class _WitcherAnimationRiveState extends State<WitcherAnimationRive> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color(0xFF222222),
      body: Center(
        child: RiveAnimation.asset('assets/witcher.riv'),
      ),
    );
  }
}
