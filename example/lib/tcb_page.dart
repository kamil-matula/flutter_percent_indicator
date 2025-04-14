import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:percent_indicator/flutter_percent_indicator.dart';
import 'package:percent_indicator_example/custom_widget_indicator.dart';
import 'package:percent_indicator_example/value_cubit.dart';

class TcbPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          children: [
            // _percentText(context),
            _example1(context),
            // _example2(context),
            // _exampleReal1(context),
            // _exampleReal2(context),
            // _exampleReal3(context),
          ],
        ),
      ),
    );
  }

  Widget _percentText(BuildContext context) {
    return BlocBuilder<ValueCubit, double>(
      bloc: context.read<ValueCubit>(),
      builder: (_, state) {
        return Text(
          '${(state * 100).toStringAsFixed(0)}%',
          style: TextStyle(fontSize: 20),
        );
      },
    );
  }

  Widget _example1(BuildContext context) {
    return SizedBox(
      // height: 20, // <-- uncomment to partially fix `widgetIndicator`
      child: LinearPercentIndicator(
        percent: 0.5,
        // progressColor: Colors.green,
        // linearGradient: LinearGradient(
        //   colors: [Colors.red, Colors.yellow, Colors.green],
        //   begin: Alignment.centerLeft,
        //   end: Alignment.centerRight,
        // ),
        // clipLinearGradient: true,
        // backgroundColor: Colors.grey,
        // fillColor: Colors.red,
        // barRadius: Radius.circular(20),
        // padding: EdgeInsets.zero,
        // leading: Text('LEADING'),
        // trailing: Text('TRAILING'),
        // center: Text('CENTER'),
        // lineHeight: 20, // <-- uncomment to fix `center`
        // widgetIndicator: Container(width: 20, height: 20, color: Colors.green),
        // animation: true,
        // animationDuration: 1000,
        // animateToInitialPercent: true,
        // animateFromLastPercent: true,
        // restartAnimation: true,
        // curve: Curves.bounceInOut, // <-- best to use with 5000ms+ duration
        // onAnimationEnd: () {},
        // onPercentValue: context.read<ValueCubit>().setValue,
        // isRTL: true,
        // reverse: true,
      ),
    );
  }

  Widget _example2(BuildContext context) {
    return CircularPercentIndicator(
      percent: 0.25,
      radius: 50,
      // progressColor: Colors.green,
      // linearGradient: LinearGradient(
      //   colors: [Colors.red, Colors.yellow, Colors.green],
      //   begin: Alignment.centerLeft,
      //   end: Alignment.centerRight,
      // ),
      // rotateLinearGradient: true,
      // clipRotatedLinearGradient: true,
      // backgroundColor: Colors.grey,
      // fillColor: Colors.red,
      // lineWidth: 10,
      // backgroundWidth: 5,
      // startAngle: 45,
      // header: Text('HEADER'),
      // footer: Text('FOOTER'),
      // center: Text('CENTER'),
      // widgetIndicator: Container(
      //   width: 10,
      //   height: 10,
      //   color: Colors.red,
      // ),
      // circularStrokeCap: CircularStrokeCap.round,
      // widgetIndicator: _IndicatorUnTranslator(
      //   circularStrokeCap: CircularStrokeCap.round,
      //   lineWidth: 10,
      //   indicatorWidget: Center(
      //     child: Container(
      //       width: 10,
      //       height: 10,
      //       color: Colors.red,
      //     ),
      //   ),
      // ),
      // animation: true,
      // animationDuration: 1000,
      // animateToInitialPercent: true,
      // animateFromLastPercent: true,
      // restartAnimation: true,
      // curve: Curves.bounceInOut, // <-- best to use with 5000ms+ duration
      // onAnimationEnd: () {},
      // onPercentValue: context.read<ValueCubit>().setValue,
      // reverse: true,
      // arcType: ArcType.HALF,
      // arcType: ArcType.FULL,
      // arcType: ArcType.FULL_REVERSED,
      // arcBackgroundColor: Colors.grey,
    );
  }

  Widget _exampleReal1(BuildContext context) {
    return CircularPercentIndicator(
      percent: 0.9,
      radius: 50,
      lineWidth: 10,
      backgroundWidth: 10,
      animation: true,
      animationDuration: 1000,
      center: _percentText(context),
      backgroundColor: Color(0xFFDFE1DF),
      linearGradient: LinearGradient(
        colors: [Colors.red, Colors.yellow, Colors.green],
      ),
      rotateLinearGradient: true,
      clipRotatedLinearGradient: true,
      onPercentValue: context.read<ValueCubit>().setValue,
      circularStrokeCap: CircularStrokeCap.round,
      widgetIndicator: _IndicatorUnTranslator(
        lineWidth: 10,
        circularStrokeCap: CircularStrokeCap.round,
        indicatorWidget: CustomIndicatorWidget(),
      ),
    );
  }

  Widget _exampleReal2(BuildContext context) {
    const double _radius = 100;
    const double _lineWidth = 20;
    const double _circleHeightVisibilityPercentage = 0.25;
    const double _QUARTER_TURN = 2 * 3.14 * 0.25;
    return ClipRRect(
      child: Align(
        alignment: Alignment.topCenter,
        heightFactor: 0.25,
        child: Stack(
          children: [
            CircularPercentIndicator(
              percent: 1.0,
              radius: _radius,
              lineWidth: _lineWidth,
              backgroundWidth: _lineWidth,
              linearGradient: LinearGradient(
                colors: [Colors.green, Colors.yellow, Colors.red],
              ),
              // WITHOUT `rotateLinearGradient`/`clipRotatedLinearGradient` (!)
            ),
            Transform.rotate(
              angle: 0,
              // angle: -_QUARTER_TURN * 0.5,
              child: CircularPercentIndicator(
                percent: 0.5 * _circleHeightVisibilityPercentage,
                // startAngle: 270, // <-- not working with indicator
                radius: _radius,
                lineWidth: _lineWidth,
                backgroundWidth: _lineWidth,
                progressColor: Colors.transparent,
                backgroundColor: Colors.transparent,
                animation: true,
                animationDuration: 1000,
                widgetIndicator: CustomIndicatorWidget(),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _exampleReal3(BuildContext context) {
    return Container(
      color: Colors.white,
      margin: EdgeInsets.all(15),
      width: 350,
      child: Stack(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: List.generate(
              5,
              (_) => Icon(
                Icons.star,
                size: 50,
              ),
            ),
          ),
          LinearPercentIndicator(
            lineHeight: 50,
            progressColor: Colors.white.withOpacity(0.75),
            backgroundColor: Colors.transparent,
            padding: EdgeInsets.zero,
            percent: 0.5,
            animation: true,
            animationDuration: 2000,
            isRTL: true,
            reverse: true,
          ),
        ],
      ),
    );
  }
}

/// This widget reverts unwanted [Transform.translate] for [CircularStrokeCap.round]
/// and [CircularStrokeCap.square]. See [CircularPercentIndicator] widget's build method.
class _IndicatorUnTranslator extends StatelessWidget {
  const _IndicatorUnTranslator({
    required this.circularStrokeCap,
    required this.lineWidth,
    required this.indicatorWidget,
  });

  final CircularStrokeCap circularStrokeCap;
  final double lineWidth;
  final Widget indicatorWidget;

  @override
  Widget build(BuildContext context) {
    if (circularStrokeCap != CircularStrokeCap.butt) {
      return Transform.translate(
        offset: -Offset(lineWidth / 2, 0),
        child: indicatorWidget,
      );
    }

    return indicatorWidget;
  }
}
