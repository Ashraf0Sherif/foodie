import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'core/routing/app_router.dart';
import 'foodie.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Future.delayed(const Duration(seconds: 5), () {
    FlutterNativeSplash.remove();
  });
  // await Firebase.initializeApp(
  //   options: DefaultFirebaseOptions.currentPlatform,
  // );
  runApp(
    Foodie(
      appRouter: AppRouter(),
    ),
  );
}
