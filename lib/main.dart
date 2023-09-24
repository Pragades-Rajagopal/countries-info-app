import 'package:countries_info_app/screens/homepage.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Countries Info app',
      theme: ThemeData(
        textTheme: TextTheme(
          bodyLarge: GoogleFonts.poppins(),
          bodyMedium: GoogleFonts.poppins(),
          bodySmall: GoogleFonts.poppins(),
        ),
      ),
      debugShowCheckedModeBanner: false,
      debugShowMaterialGrid: false,
      home: const Homepage(),
    );
  }
}
