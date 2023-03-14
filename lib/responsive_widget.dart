library responsive_widget;

import 'package:flutter/widgets.dart';

/// A responsive widget template which allows you to create a widget version
/// for each device type: [mobile], [tablet], and [desktop]. It displays
/// the appropriate widget based on the current screen size and the defined
/// width breakpoints: [minWidthBreakpoint] and [maxWidthBreakpoint].
class Responsive extends StatelessWidget {
  /// Creates a new [Responsive] widget.
  ///
  /// [mobile] is the widget to display on mobile devices.
  ///
  /// [tablet] is the widget to display on tablet devices. If null, [mobile]
  /// will be used instead.
  ///
  /// [desktop] is the widget to display on desktop devices. If null, [tablet]
  /// will be used, or [mobile] if [tablet] is also null.
  ///
  /// [minWidthBreakpoint] and [maxWidthBreakpoint] define the minimum and
  /// maximum screen widths for tablet devices. The default values are 650
  /// and 1024, respectively.
  const Responsive({
    Key? key,
    required this.mobile,
    this.tablet,
    this.desktop,
    this.minWidthBreakpoint = 650,
    this.maxWidthBreakpoint = 1024,
  }) : super(key: key);

  /// The widget to display on mobile devices.
  final Widget mobile;

  /// The widget to display on tablet devices. If null, [mobile] will be used.
  final Widget? tablet;

  /// The widget to display on desktop devices. If null, [tablet] will be used,
  /// or [mobile] if [tablet] is also null.
  final Widget? desktop;

  /// The minimum screen width for tablet devices.
  final int minWidthBreakpoint;

  /// The maximum screen width for tablet devices.
  final int maxWidthBreakpoint;

  /// Returns true if the screen size matches the mobile defined dimensions.
  bool isMobile(BuildContext context) =>
      MediaQuery.of(context).size.width < minWidthBreakpoint;

  /// Returns true if the screen size matches the tablet defined dimensions.
  bool isTablet(BuildContext context) =>
      MediaQuery.of(context).size.width < maxWidthBreakpoint &&
          MediaQuery.of(context).size.width >= minWidthBreakpoint;

  /// Returns true if the screen size matches the desktop defined dimensions.
  bool isDesktop(BuildContext context) =>
      MediaQuery.of(context).size.width >= maxWidthBreakpoint;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (isDesktop(context)) {
          return desktop ?? tablet ?? mobile;
        } else if (isTablet(context)) {
          return tablet ?? mobile;
        } else {
          return mobile;
        }
      },
    );
  }
}

