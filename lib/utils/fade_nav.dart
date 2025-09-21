import 'package:flutter/material.dart';


void fadeNavigateReplace(BuildContext context, Widget page) {
Navigator.of(context).pushReplacement(PageRouteBuilder(
pageBuilder: (context, animation, secondaryAnimation) => page,
transitionsBuilder: (context, animation, secondaryAnimation, child) {
return FadeTransition(opacity: animation, child: child);
},
transitionDuration: Duration(milliseconds: 500),
));
}