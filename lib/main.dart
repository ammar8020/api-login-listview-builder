import 'package:flutter/material.dart';
import 'package:flutter_http_post_request/pages/home_page.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'package:flutter_http_post_request/pages/login_page.dart';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

// void main() {
//   runApp(MyApp());
// }

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SharedPreferences prefs = await SharedPreferences.getInstance();
  var email = prefs.getString('token');
  print(email);
  runApp(MaterialApp(
    
    
    
    
    


    title: 'Image Loader',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'Poppins',
        primaryColor: Colors.white,
        floatingActionButtonTheme: FloatingActionButtonThemeData(
          elevation: 0,
          foregroundColor: Colors.white,
        ),
        accentColor: Colors.redAccent,
        textTheme: TextTheme(
          headline1: TextStyle(fontSize: 22.0, color: Colors.redAccent),
          headline2: TextStyle(
            fontSize: 24.0,
            fontWeight: FontWeight.w700,
            color: Colors.redAccent,
          ),
          bodyText1: TextStyle(
            fontSize: 14.0,
            fontWeight: FontWeight.w400,
            color: Colors.blueAccent,
          ),
        ),
      ),

      // home: LoginPage(),
      
      home: email == null ? LoginPage() : HomePage(),

      routes: {
        LoginPage.routeName: (context) => LoginPage(),
        HomePage.routeName: (context) => HomePage(),
      },
    
    
    
    )
    
    );
}

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Image Loader',
//       debugShowCheckedModeBanner: false,
//       theme: ThemeData(
//         fontFamily: 'Poppins',
//         primaryColor: Colors.white,
//         floatingActionButtonTheme: FloatingActionButtonThemeData(
//           elevation: 0,
//           foregroundColor: Colors.white,
//         ),
//         accentColor: Colors.redAccent,
//         textTheme: TextTheme(
//           headline1: TextStyle(fontSize: 22.0, color: Colors.redAccent),
//           headline2: TextStyle(
//             fontSize: 24.0,
//             fontWeight: FontWeight.w700,
//             color: Colors.redAccent,
//           ),
//           bodyText1: TextStyle(
//             fontSize: 14.0,
//             fontWeight: FontWeight.w400,
//             color: Colors.blueAccent,
//           ),
//         ),
//       ),
//       home: LoginPage(),
//       routes: {
//         LoginPage.routeName: (context) => LoginPage(),
//         HomePage.routeName: (context) => HomePage(),
//       },
//     );
//   }
// }
