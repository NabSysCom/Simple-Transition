import 'package:flutter/material.dart';

class FeadAnimated extends StatefulWidget {
  final Widget myWidet;
  const FeadAnimated({super.key, required this.myWidet});

  @override
  State<FeadAnimated> createState() => _FeadAnimatedState();
}

class _FeadAnimatedState extends State<FeadAnimated>
    with SingleTickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return TweenAnimationBuilder(
      tween: Tween<double>(begin: 0, end: 1),
      duration: const Duration(milliseconds: 500),
      builder: (myContext, value, myWidet) {
        return Padding(
          padding: EdgeInsets.only(bottom: value * 30.0),
          child: Opacity(
            opacity: value,
            child: myWidet,
          ),
        );
      },
      child: widget.myWidet,
    );
  }
}

class FadeAnimation extends StatelessWidget {
  //final double delay;
  final Widget myWidet;
  final BuildContext myContext;
  const FadeAnimation(
      {super.key, required this.myWidet, required this.myContext});
  //const FadeAnimation(this.delay, this.child, {super.key, Widget? widget});

  @override
  Widget build(BuildContext context) {
// final tween = Tween<double>()
// ..add(AniProps.opacity, 0.0.tweenTo(1.0), 500.milliseconds)
//       ..add(AniProps.translateY, (-90.0).tweenTo(0.0), 1000.milliseconds,
//           Curves.easeOut);
    Widget xw = myWidet;
    return TweenAnimationBuilder(
      tween: Tween<double>(begin: 0, end: 1),
      duration: const Duration(milliseconds: 500),
      builder: (myContext, value, myWidet) {
        return Padding(
          padding: EdgeInsets.only(bottom: value * 30.0),
          child: Opacity(
            opacity: value,
            child: xw,
          ),
        );

        // Opacity(
        //   opacity: value,
        //   child: Padding(
        //     padding: EdgeInsets.only(bottom: value * 30.0),
        //     child: xw,
        //   ),
        // );
      },
      child: xw,
    );
  }
}
