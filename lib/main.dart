import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'feature/login/view/login_view.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersive, overlays: [
      SystemUiOverlay.bottom,
    ]);
    return const MaterialApp(
      title: 'Material App',
      home: LoginView(),
      debugShowCheckedModeBanner: false,
    );
  }
}
