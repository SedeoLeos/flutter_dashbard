import 'package:flutter/material.dart';

class Responsive extends StatelessWidget {
  final Widget mobile;
  final Widget? tablet;
  final Widget desktop;
  final Widget? smallMobile;

  const Responsive({super.key, 
   
    required this.mobile,
    this.tablet,
    required this.desktop,
    this.smallMobile
  }) ;

// This size work fine on my design, maybe you need some customization depends on your design

  // This isMobile, isTablet, isDesktop helep us later
  static bool isMobile(BuildContext context) =>
      MediaQuery.of(context).size.width < 768;

  static bool isTablet(BuildContext context) =>
      MediaQuery.of(context).size.width < 1200 &&
      MediaQuery.of(context).size.width >= 768;

  static bool isDesktop(BuildContext context) =>
      MediaQuery.of(context).size.width >= 1200;

  @override
  Widget build(BuildContext context) {
    final Size _size = MediaQuery.of(context).size;

    // If our width is more than or equal to 1200, we consider it a desktop
    if (_size.width >= 1200) {
      return desktop;
    }
    // If width is between 768 and 1200 (excluding 1200), we consider it a tablet
    else if (_size.width >= 768 && _size.width < 1200 && tablet != null) {
      return tablet!;
    }
    // If width is between 376 and 768 (excluding 768), we consider it a mobile
    else if (_size.width >= 376 && _size.width < 768) {
      return mobile;
    }
    // If width is less than 376 and smallMobile is provided, use smallMobile
    else if (_size.width < 376 && smallMobile != null) {
      return smallMobile!;
    }
    // Default case if no specific condition is met
    else {
      return mobile; // Or provide a fallback widget if needed
    }
  }}