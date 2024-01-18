import 'package:flutter/material.dart';

class TextAnimated extends StatelessWidget {
  final String text;
  const TextAnimated({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return TweenAnimationBuilder(
      tween: Tween<double>(begin: 0, end: 1),
      duration: const Duration(milliseconds: 500),
      builder: (BuildContext context, double value, Widget? child) {
        return Opacity(
          opacity: value,
          child: Padding(
            padding: EdgeInsets.only(bottom: value * 30.0),
            child: child,
          ),
        );
      },
      child: TextFormField(
        decoration: const InputDecoration(
          labelText: 'This Is The Title',
        ),
      ),

      // Text(
      //   text,
      //   style: const TextStyle(
      //       fontSize: 28, color: Colors.pink, fontWeight: FontWeight.bold),
      // ),
    );
  }
}
