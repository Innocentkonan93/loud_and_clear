import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:loud_and_clear/models/feed_model.dart';
import 'package:loud_and_clear/screens/web/galery_screen.dart'; 
import 'package:loud_and_clear/screens/web/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Loud & Clear',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          colorScheme: const ColorScheme(
            brightness: Brightness.light,
            primary: Color(0xFFBD1300),
            onPrimary: Color(0xFFFFFFFF),
            primaryContainer: Color(0xFFFFDAD1),
            onPrimaryContainer: Color(0xFF400200),
            secondary: Color(0xFF775650),
            onSecondary: Color(0xFFFFFFFF),
            secondaryContainer: Color(0xFFFFDAD2),
            onSecondaryContainer: Color(0xFF2C1511),
            tertiary: Color(0xFF6E5C2E),
            onTertiary: Color(0xFFFFFFFF),
            tertiaryContainer: Color(0xFFFAE0A6),
            onTertiaryContainer: Color(0xFF251A00),
            error: Color(0xFFBA1B1B),
            errorContainer: Color(0xFFFFDAD4),
            onError: Color(0xFFFFFFFF),
            onErrorContainer: Color(0xFF410001),
            background: Color(0xFFFCFCFC),
            onBackground: Color(0xFF201A19),
            surface: Color(0xFFFCFCFC),
            onSurface: Color(0xFF201A19),
            surfaceVariant: Color(0xFFF5DEDA),
            onSurfaceVariant: Color(0xFF534340),
            outline: Color(0xFF857370),
            onInverseSurface: Color(0xFFFBEEEB),
            inverseSurface: Color(0xFF362F2E),
            inversePrimary: Color(0xFFFFB4A4),
            shadow: Color(0xFF000000),
          ),
          textTheme: TextTheme(
            headline1: GoogleFonts.montserrat(
              fontSize: 36,
              color: const Color(0xffFFFFFF),
              fontWeight: FontWeight.bold,
            ),
            headline2: GoogleFonts.montserrat(
              fontSize: 24,
              color: const Color(0xffFFFFFF),
              fontWeight: FontWeight.bold,
            ),
            headline3: GoogleFonts.montserrat(
              fontSize: 18,
              color: const Color(0xffFFFFFF),
              fontWeight: FontWeight.bold,
            ),
            headline4: GoogleFonts.montserrat(
              fontSize: 16,
              color: const Color(0xffFFFFFF),
              fontWeight: FontWeight.bold,
            ),
            headline5: GoogleFonts.montserrat(
              fontSize: 14,
              color: const Color(0xffFFFFFF),
              fontWeight: FontWeight.bold,
            ),
            headline6: GoogleFonts.montserrat(
              fontSize: 14,
              color: const Color(0xffFFFFFF),
              fontWeight: FontWeight.normal,
            ),
            bodyText1: GoogleFonts.montserrat(
              fontSize: 12,
              color: const Color(0xffFFFFFF),
              fontWeight: FontWeight.normal,
            ),
            bodyText2: GoogleFonts.montserrat(
              fontSize: 12,
              color: const Color(0xffFFFFFF),
              fontWeight: FontWeight.normal,
            ),
            caption: GoogleFonts.montserrat(
              fontSize: 10,
              color: const Color.fromARGB(255, 144, 144, 144),
              fontWeight: FontWeight.normal,
            ),
          ),
        ),
        home:  EventDetailScreen(feedModel: events.first,));
  }
}
