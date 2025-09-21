import 'package:flutter/material.dart';
import '../localization/localizations.dart';
import 'signup_screen.dart';


class WelcomeScreen extends StatelessWidget {
@override
Widget build(BuildContext context) {
final loc = Localizations.of(context);
return Scaffold(
body: SafeArea(
child: Padding(
padding: const EdgeInsets.all(20.0),
child: Column(
mainAxisAlignment: MainAxisAlignment.center,
children: [
Text(loc.t('welcomeTitle'), style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold)),
SizedBox(height: 24),
Row(
mainAxisAlignment: MainAxisAlignment.center,
children: [
Image.asset('assets/images/local_placeholder.png', width: 120, height: 120, fit: BoxFit.cover),
SizedBox(width: 12),
Image.network('https://picsum.photos/seed/welcome/120/120', width: 120, height: 120),
],
),
SizedBox(height: 36),
ElevatedButton(
onPressed: () => Navigator.of(context).push(MaterialPageRoute(builder: (_) => SignUpScreen())),
child: Text(loc.t('signup')),
style: ElevatedButton.styleFrom(minimumSize: Size(double.infinity, 48)),
),
SizedBox(height: 12),
OutlinedButton(
onPressed: () => Navigator.of(context).push(MaterialPageRoute(builder: (_) => SignInScreen())),
child: Text(loc.t('signin')),
style: OutlinedButton.styleFrom(minimumSize: Size(double.infinity, 48)),
),
],
),
),
),
);
}
}