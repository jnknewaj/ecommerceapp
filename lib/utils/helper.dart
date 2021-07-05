import 'package:ecommerce_app/domain/core/errors/failures.dart';
import 'package:flutter/material.dart';

class Helper {
  static Size screenSize(BuildContext context) {
    return MediaQuery.of(context).size;
  }

  static double getScreenHeight(BuildContext context) {
    return screenSize(context).height;
  }

  static double getScreenWidth(BuildContext context) {
    return screenSize(context).width;
  }

  static double screenHeightPortion(
    BuildContext context, {
    double time = 1,
    double reducedBy = 0.0,
  }) {
    return (screenSize(context).height * time) - reducedBy;
  }

  static double screenWidthPortion(
    BuildContext context, {
    double time = 1,
    double reducedBy = 0.0,
  }) {
    return (screenSize(context).width * time) - reducedBy;
  }
}

String mapFailuresToMessage(Failures failures) {
  return failures.map(
    serverFailure: (_) => 'Server Error',
    networkFailure: (_) => 'No Internet Connection',
    cacheFailure: (_) => 'No Cached Data Found',
    unexpectedFailure: (_) => 'Unexpected Error Occurred',
  );
}
