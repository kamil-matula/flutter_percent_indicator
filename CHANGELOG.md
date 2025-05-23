# [4.2.5]

- Added clipRotatedLinearGradient param, thanks kamil-matula
- Enabling multi-segment progress bar with animations and stripes, thanks naseerahmedaziz
- A lot of fixes.

# [4.2.4]

- A lot of fixes.

# [4.2.3]

- Screenshots added. Thanks FMorschel.

# [4.2.2]

- This version is for flutter 3.0 >=.

# [4.2.1]

- Add compatibility with lower versions of flutter.

# [4.2.0]

- Flutter 3.0 updated.

# [4.0.1]

- Fixed a bug: 1% progress should be inside. Thanks Gábor.

# [4.0.0]

- [BREAKING CHANGE] now `radius` is a real radius and not diameter. Thanks to `Nipun Shah`.

# [3.5.0]

- `linearStrokeCap` was deprecated. Use `barRadius` instead. Thanks to `martinkong0806`.

# [3.4.0]

- Null safety migration completed.
- Widget Indicator works when using Arc mode on `CircularPercentIndicator`.

# [3.0.1]

- `linearGradientBackgroundColor` was added for `LinearPercentIndicator`. Thanks Jeremiah Parrack.

# [3.0.0]

- Null safety migration.

# 2.1.9 - 2.1.9+1

- Users can stop `animation` after this was initialize.
- Added Half Arc for `CircularPercentIndicator` , added by Vivek
- Extra height was removed. Thanks Brayan Cantos.

# 2.1.8

- New field was added : `rotateLinearGradient` -> Enable rotation of linear gradient in circular percent indicator. Added by `ecokeco`.

# 2.1.7 - 2.1.7+4

- Added optional `widgetIndicator` for `CircularPercentIndicator` and `LinearPercentIndicator`, it's an indicator displayed at the end of the progress, it only works when the `animation` is `true`. Thanks to Brayan Cantos for the contribution

# 2.1.6

- Added optional `onAnimationEnd` for `CircularPercentIndicator` and `LinearPercentIndicator`, it's a callback when the animation ends. Thanks to Brayan Cantos for the contribution

# 2.1.5

- Added optional `backgroundWidth` for `CircularPercentIndicator`. Thanks to CircuitGuy for the contribution

# 2.1.4

- `restartAnimation` was added to restart the animation when reached the end. Thanks to superciccio for the contribution

# 2.1.3

- Added `StrokeCap` on background. Thanks @mifama

# 2.1.2

- `curve` was added in both indicators.

# 2.1.1

- `LinearPercentIndicator` now can display only part of linear gradient using `clipLinearGradient`.

# 2.1.0

- vertical padding removed from `LinearPercentIndicator`.

# 2.0.1

- `maskFilter` was added for `LinearPercentIndicator` and `CircularPercentIndicator`. Thanks to akdu12 for the contribution

# 2.0.0

- `linearGradient` was added for `LinearPercentIndicator` and `CircularPercentIndicator`.
- `reverse`, `arcType` and `arcBackgroundColor` were added to the `CircularPercentIndicator`.

# 1.0.16

- `width` is optional for `LinearPercentIndicator` widget,

# 1.0.15

- Added `addAutomaticKeepAlive` property to preserve the state of the widget.
- Added `isRTL` for `LinearPercentIndicator` widget.

# 1.0.14

- Fixed bug using animateFromLastPercent. Thanks joelbrostrom

# 1.0.13

- Padding removed from leading and trailing on LinearPercentIndicator, now you can use Expanded or Flexible.
- Fixed animation when refresh the widget with different duration

# 1.0.12

- animateFromLastPercent property was added for LinearPercentIndicator and CircularPercentIndicator

# 1.0.11

- startAngle for CircularPercentIndicator was added

# 1.0.10

- animation update bug fixed. Thanks @Tiagosito

# 1.0.9

- padding property was added for LinearPercentIndicator

# 1.0.7 - 1.0.8

- alignment property was added for LinearPercentIndicator

# 1.0.5 - 1.0.6

- fillColor property was added to LinearPercentIndicator

# 1.0.1 - 1.0.4

- Readme updated

# 1.0.0

- Initial release
