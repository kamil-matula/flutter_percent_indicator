import 'package:flutter/material.dart';

class CustomIndicatorWidget extends StatelessWidget {
  static const double _indicatorOuterSize = 16;
  static const double _indicatorInnerSize = 10;

  const CustomIndicatorWidget();

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: _indicatorOuterSize,
        height: _indicatorOuterSize,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: Border.all(
            color: Colors.white,
            width: (_indicatorOuterSize - _indicatorInnerSize) / 2,
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.25),
              blurRadius: 8,
              offset: const Offset(0, 4),
            ),
          ],
        ),
      ),
    );
  }
}
