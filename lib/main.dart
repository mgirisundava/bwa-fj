import 'package:bwa_future_job/pages/home_page.dart';
import 'package:bwa_future_job/pages/signin_page.dart';
import 'package:bwa_future_job/pages/signup_page.dart';
import 'package:bwa_future_job/pages/splash_page.dart';
import 'package:bwa_future_job/pages/started_page.dart';
import 'package:bwa_future_job/providers/auth_provider.dart';
import 'package:bwa_future_job/providers/category_provider.dart';
import 'package:bwa_future_job/providers/job_provider.dart';
import 'package:bwa_future_job/providers/user_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<AuthProvider>(
            create: (context) => AuthProvider()),
        ChangeNotifierProvider<UserProvider>(
            create: (context) => UserProvider()),
        ChangeNotifierProvider<CategoryProvider>(
            create: (context) => CategoryProvider()),
        ChangeNotifierProvider<JobProvider>(create: (context) => JobProvider()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        routes: {
          '/': (context) => SplashPage(),
          '/started': (context) => StartedPage(),
          '/sign-in': (context) => SignInPage(),
          '/sign-up': (context) => SignUpPage(),
          '/home': (context) => HomePage(),
        },
      ),
    );
  }
}
