import 'package:flutter/material.dart';

void myNavigationPush(
  BuildContext context, {
  required Widget pageName,
}) {
  Navigator.of(context).push(MaterialPageRoute(
    builder: (BuildContext context) => pageName,
  ));
}
