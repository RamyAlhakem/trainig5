import 'package:flutter/material.dart';
import 'package:trainig5/Cartcontroller.dart';
import 'package:trainig5/Pageone.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

late SharedPreferences pref;
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  pref = await SharedPreferences.getInstance();
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => Cartcontroller(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Pageone(),
      ),
    );
  }
}
