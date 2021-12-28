import 'package:flutter/material.dart';

class BorderAnimationRound extends StatefulWidget {
  const BorderAnimationRound({Key? key}) : super(key: key);

  @override
  _BorderAnimationRoundState createState() => _BorderAnimationRoundState();
}

class _BorderAnimationRoundState extends State<BorderAnimationRound>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller =
        AnimationController(vsync: this, duration: const Duration(seconds: 1));
    _controller
      ..forward()
      ..addStatusListener((status) {
        if (status == AnimationStatus.completed) {
          _controller.forward(from: 0);
        }
      })
      ..addListener(() {
        setState(() {});
      });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
            width: 150,
            height: 50,
            decoration: BoxDecoration(
              boxShadow: const [
                BoxShadow(
                  offset: Offset(1, 1),
                  blurRadius: 3,
                  color: Colors.black,
                )
              ],
              gradient: SweepGradient(
                startAngle: 4,
                colors: const [Colors.black, Colors.blue],
                transform: GradientRotation(_controller.value * 6),
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration: const BoxDecoration(
                  color: Colors.white,
                ),
                alignment: Alignment.center,
                child: const Text("Hello"),
              ),
            )),
      ),
    );
  }
}
