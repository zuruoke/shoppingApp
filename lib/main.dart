import 'package:flutter/material.dart';
import 'package:shopping_app/state/app_state.dart';
import 'package:provider/provider.dart';
import 'package:shopping_app/ui/tab_screen.dart';
//import 'package:google_fonts/google_fonts.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  //await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<AppState>(create: (_) => AppState()),
      ],
      child: MaterialApp(
        title: 'Shopping App',
        debugShowCheckedModeBanner: false,
        home: TabScreen(),
      ),
    );
  }
}