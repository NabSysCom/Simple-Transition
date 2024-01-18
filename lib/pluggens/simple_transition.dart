import 'package:flutter/material.dart';

enum Move { up, down, right, left, none, upLeft, upRight, downLeft, downRight }

class SimpleTransition extends StatefulWidget {
  final Widget child;
  final double? duration;
  final Curve curve;
  final Move? move;
  final int? amount;

  const SimpleTransition(
    this.child, {
    this.move = Move.down,
    this.amount = 2,
    this.duration = 1,
    this.curve = Curves.easeInOut,
    super.key,
  });

  @override
  SimpleTransitionState createState() => SimpleTransitionState();
}

class SimpleTransitionState extends State<SimpleTransition>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<Offset> _slideAnimation;

  Tween<Offset> getTweenOffset(Move move, int amount) {
    final double amunt = amount.toDouble() / 10;
    Offset bgn;
    Offset end;

    switch (move) {
      case Move.up:
        bgn = Offset.zero;
        end = Offset(0.0, -amunt);
        break;
      case Move.down:
        bgn = Offset.zero;
        end = Offset(0.0, amunt);
        break;
      case Move.right:
        bgn = Offset.zero;
        end = Offset(amunt, 0.0);
        break;
      case Move.left:
        bgn = Offset.zero;
        end = Offset(-amunt, 0.0);
        break;
      case Move.upLeft:
        bgn = Offset.zero;
        end = Offset(-amunt, -amunt);
        break;
      case Move.downLeft:
        bgn = Offset.zero;
        end = Offset(-amunt, amunt);
        break;
      case Move.upRight:
        bgn = Offset.zero;
        end = Offset(amunt, -amunt);
        break;
      case Move.downRight:
        bgn = Offset.zero;
        end = Offset(amunt, amunt);
        break;
      default:
        bgn = Offset.zero;
        end = Offset.zero;
    }

    return Tween<Offset>(
      begin: bgn,
      end: end,
    );
  }

  @override
  void initState() {
    super.initState();
    Tween<Offset> gtTwnffst = getTweenOffset(widget.move!, widget.amount!);
    _controller = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: (widget.duration! * 1000).toInt()),
    );
    _slideAnimation = gtTwnffst.animate(CurvedAnimation(
      parent: _controller,
      curve: widget.curve,
    ));
    _controller.forward();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _slideAnimation,
      builder: (context, child) {
        return SlideTransition(
          position: _slideAnimation,
          child: child,
        );
      },
      child: widget.child,
    );
  }
}
