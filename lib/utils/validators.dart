String? validateFullName(String? value, String requiredText, String firstUpperText) {
if (value == null || value.trim().isEmpty) return requiredText;
final trimmed = value.trim();
if (trimmed[0] != trimmed[0].toUpperCase()) return firstUpperText;
return null;
}


String? validateEmail(String? value, String requiredText, String invalidText) {
if (value == null || value.trim().isEmpty) return requiredText;
if (!value.contains('@')) return invalidText;
return null;
}


String? validatePassword(String? value, String requiredText, String shortText) {
if (value == null || value.isEmpty) return requiredText;
if (value.length < 6) return shortText;
return null;
}