import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_first_app/pages/homescreen.dart';
// import 'package:my_first_app/pages/landingpage.dart';
import 'package:my_first_app/pages/loginpage.dart';
import 'package:my_first_app/pages/otpverification.dart';
// import 'package:my_first_app/pages/newbankaccountpage.dart';
// import 'package:my_first_app/pages/newuserregistration.dart';
// import 'package:my_first_app/pages/verificationscreen.dart';

// import 'pages/tosagreement.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        textTheme: GoogleFonts.poppinsTextTheme(Theme.of(context).textTheme),
      ),
      home: HomeScreen(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Column(children: [

        ],
      ));
  }
}
