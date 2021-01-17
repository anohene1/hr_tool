import 'package:flutter/material.dart';

class HorizontalSpacing extends StatelessWidget {
  const HorizontalSpacing(this.size);

  final double size;

  @override
  Widget build(BuildContext context) {
    return SizedBox(width: size,);
  }
}


class VerticalSpacing extends StatelessWidget {
  const VerticalSpacing(this.size);

  final double size;

  @override
  Widget build(BuildContext context) {
    return SizedBox(height: size,);
  }
}
