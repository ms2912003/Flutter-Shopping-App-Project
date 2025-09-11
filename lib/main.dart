import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'app.dart';
import 'models/cart_model.dart';


void main() async {
WidgetsFlutterBinding.ensureInitialized();
runApp(ChangeNotifierProvider(
create: (_) => CartModel(),
child: MyApp(),
));
}