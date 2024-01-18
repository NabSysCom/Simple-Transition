# Simple Transition

A Flutter Project.

## Getting Started

This project contains a simple class helping flutter developers creating an animated transition for widgets, without diving into the details of flutter animations objects.

![<img src="https://tmt.sa/Simple_Transition.png" width="300" height="650"/>](https://tmt.sa/Simple_Transition.mp4)

For help getting started with Simple Transition development:
- Copy simple_transition.dart file to your project
- Wrap your targit widget by : SimpleTransition(your_wiget).

Optional properties:
- move : [Move.up, Move.down, Move.left, Move.right, Move.upLeft, Move.upRight, Move.downLeft, Move.downRight, Move.none] : default is [Move.down].
- amount: the amount of transition int value start from 1.
- duration: speed of transition effict by seconds : defualt is [1.0] seconds.
- curve: type of curve : default is [Curves.easeInOut].

A few Flutter tutorials you can find at my: 
- [Youtube Nab Sys Channel](https://www.youtube.com/@nabsys9572), which offers tutorials,
samples, guidance on mobile development.
- [Twitter](https://twitter.com/nab_sys)