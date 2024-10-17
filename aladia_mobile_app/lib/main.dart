import 'package:aladia_mobile_app/features/auth/screens/loginScreen.dart';
import 'package:aladia_mobile_app/features/home/presentation/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'features/splash/screens/bloc/splash_bloc.dart';
import 'features/splash/screens/pages/splashScreen.dart';
import 'routes/app_routes.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => SplashBloc(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        routes: {
          AppRoutes.splash: (context) => SplashScreen(),
          AppRoutes.login: (context) => Loginscreen(),
          AppRoutes.home: (context) => HomeScreen(),
        },
        initialRoute: AppRoutes.splash,
      ),
    );
  }
}
