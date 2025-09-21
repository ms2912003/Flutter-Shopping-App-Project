import 'package:flutter/material.dart';

class SimpleLocalizations {
  final Locale locale;
  SimpleLocalizations(this.locale);

  static SimpleLocalizations of(BuildContext context) {
    return Localizations.of<SimpleLocalizations>(context, SimpleLocalizations)!;
  }

  static final Map<String, Map<String, String>> _localizedValues = {
    'en': {
      'welcomeTitle': 'Welcome to SprintUp',
      'signup': 'Sign Up',
      'signin': 'Sign In',
      'ourProducts': 'Our Products',
      'hotOffers': 'Hot Offers',
      'fullName': 'Full Name',
      'email': 'Email',
      'password': 'Password',
      'confirmPassword': 'Confirm Password',
      'accountCreated': 'Account created successfully',
      'accountSignedIn': 'Account sign-in successfully',
      'close': 'Close',
      'addToCart': 'Add to cart',
      'itemAdded': 'Item added to the cart'
    },
    'ar': {
      'welcomeTitle': 'مرحباً بك في SprintUp',
      'signup': 'إنشاء حساب',
      'signin': 'تسجيل الدخول',
      'ourProducts': 'منتجاتنا',
      'hotOffers': 'العروض الساخنة',
      'fullName': 'الاسم الكامل',
      'email': 'البريد الإلكتروني',
      'password': 'كلمة المرور',
      'confirmPassword': 'تأكيد كلمة المرور',
      'accountCreated': 'تم إنشاء الحساب بنجاح',
      'accountSignedIn': 'تم تسجيل الدخول بنجاح',
      'close': 'إغلاق',
      'addToCart': 'أضف إلى السلة',
      'itemAdded': 'تمت إضافة المنتج إلى السلة'
    }
  };

  String t(String key) {
    return _localizedValues[locale.languageCode]?[key] ??
        _localizedValues['en']![key] ??
        key;
  }
}

class SimpleLocalizationsDelegate
    extends LocalizationsDelegate<SimpleLocalizations> {
  const SimpleLocalizationsDelegate();

  @override
  bool isSupported(Locale locale) => ['en', 'ar'].contains(locale.languageCode);

  @override
  Future<SimpleLocalizations> load(Locale locale) async {
    return SimpleLocalizations(locale);
  }

  @override
  bool shouldReload(SimpleLocalizationsDelegate old) => false;
}
