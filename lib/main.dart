import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '/ui/welcome.dart';
import '/bloc/provider.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp])
      .then((_) {
    runApp(new FlutterStudio());
  });
}

class FlutterStudio extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Provider(
      child: MaterialApp(
        title: 'Flutter Demo',
        debugShowCheckedModeBanner: false,
        home: WelcomeScreen(),
      ),
    );
  }
}


