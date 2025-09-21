import 'package:flutter/material.dart';
import '../utils/validators.dart';
import '../utils/fade_nav.dart';
import '../localization/localizations.dart';
import 'welcome_screen.dart';

class SignUpScreen extends StatefulWidget {
  @override
  _SignUpScreenState createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final _formKey = GlobalKey<FormState>();

  final _nameCtrl = TextEditingController();
  final _emailCtrl = TextEditingController();
  final _passCtrl = TextEditingController();
  final _confirmCtrl = TextEditingController();

  @override
  void dispose() {
    _nameCtrl.dispose();
    _emailCtrl.dispose();
    _passCtrl.dispose();
    _confirmCtrl.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final loc = SimpleLocalizations.of(context);

    return Scaffold(
      appBar: AppBar(title: Text(loc.t('signup'))),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              TextFormField(
                controller: _nameCtrl,
                decoration: InputDecoration(labelText: loc.t('fullName')),
                validator: (v) => validateFullName(
                  v,
                  '${loc.t('fullName')} is required',
                  'First letter must be uppercase',
                ),
              ),
              TextFormField(
                controller: _emailCtrl,
                decoration: InputDecoration(labelText: loc.t('email')),
                validator: (v) => validateEmail(
                  v,
                  '${loc.t('email')} is required',
                  'Enter a valid email',
                ),
              ),
              TextFormField(
                controller: _passCtrl,
                decoration: InputDecoration(labelText: loc.t('password')),
                obscureText: true,
                validator: (v) => validatePassword(
                  v,
                  '${loc.t('password')} is required',
                  'Password must be 6+ chars',
                ),
              ),
              TextFormField(
                controller: _confirmCtrl,
                decoration: InputDecoration(labelText: loc.t('confirmPassword')),
                obscureText: true,
                validator: (v) {
                  if (v == null || v.isEmpty) {
                    return '${loc.t('confirmPassword')} is required';
                  }
                  if (v != _passCtrl.text) {
                    return 'Passwords do not match';
                  }
                  return null;
                },
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    showDialog(
                      context: context,
                      builder: (_) => AlertDialog(
                        content: Text(loc.t('accountCreated')),
                        actions: [
                          TextButton(
                            onPressed: () {
                              Navigator.of(context).pop();
                              fadeNavigateReplace(context, HomeScreen());
                            },
                            child: Text(loc.t('close')),
                          )
                        ],
                      ),
                    );
                  }
                },
                child: Text(loc.t('signup')),
                style: ElevatedButton.styleFrom(
                  minimumSize: Size(double.infinity, 48),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
