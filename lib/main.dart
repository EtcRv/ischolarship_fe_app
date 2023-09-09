import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:ischolarship_fe_app/screens/AuthenticationScreen/AuthenticationScreen.dart';
import 'package:ischolarship_fe_app/screens/HomeScreen/HomeScreen.dart';
import 'package:ischolarship_fe_app/screens/LoginScreen/LoginScreen.dart';
import 'package:ischolarship_fe_app/screens/ProfileScreen/ProfileScreen.dart';
import 'package:ischolarship_fe_app/screens/RegisterScreen/RegisterScreen.dart';
import 'package:ischolarship_fe_app/screens/ScholarshipDetailScreen/ScholarshipDetailScreen.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a blue toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      onGenerateRoute: (settings) {
        final List<String> pathSegments = settings.name!.split('/');
        // Check if the route matches the expected pattern
        if (pathSegments[0] == '' &&
            pathSegments[1] == 'scholarship' &&
            pathSegments.length == 3) {
          final String scholarshipId = pathSegments[2];
          return MaterialPageRoute(
            builder: (context) =>
                ScholarshipDetailScreen(scholarshipId: scholarshipId),
          );
        }
      },
      routes: {
        '/': (context) => HomeScreen(),
        '/authentication': (context) => AuthenticationScreen(),
        '/login': (context) => LoginScreen(),
        '/register': (context) => RegisterScreen(),
        '/profile': (context) => ProfileScreen(),
        // '/scholarship/:id': (context) => ScholarshipDetailScreen(),
      },
      initialRoute: '/',
    );
  }
}
