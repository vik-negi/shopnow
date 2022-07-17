// import 'dart:html';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shopnow/screens/Authentication.dart';
import 'package:shopnow/screens/HomePage.dart';
import 'package:shopnow/screens/ProfilePage.dart';
import 'package:shopnow/screens/SigninPage.dart';
import 'package:shopnow/screens/SignupPage.dart';
import 'package:shopnow/screens/WalletPage.dart';
import 'package:shopnow/utils/routes.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'firebase_options.dart';


Future <void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);
  
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  User? user = FirebaseAuth.instance.currentUser;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      
      // home: const NavigatorMenu(),
      // home: const MainPage(),
      home : (user==null) ? const SignIn():const NavigatorMenu(),
      // if(user!= null) {
      //         return NavigatorMenu(user: user!);
      //       }else{
      //         return NavigatorMenu(user: user!);
      //     }
      // home: const SignIn(),
      // home: 
      routes: {
        MyRoutes.exploreRoute : (context)=> const HomePage(),
        MyRoutes.shopRoute : (context)=> const HomePage(),
        MyRoutes.profileRoute : (context)=> const HomePage(),
        MyRoutes.signInRoute : (context)=> const SignIn(),
        MyRoutes.signUpRoute : (context)=> const SignUp(),
      }
    );   
  }
}





class NavigatorMenu extends StatefulWidget {
  const NavigatorMenu({Key? key}) : super(key: key);

  
  @override
  State<NavigatorMenu> createState() => _NavigatorMenuState();
}

class _NavigatorMenuState extends State<NavigatorMenu> {

  final screens = [
    const HomePage(),
    // const ProfilePage(),
    const ProfilePage(),
    const WalletPage(),
    const ProfilePage(),
  ];
  late int index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[index],
      bottomNavigationBar: NavigationBarTheme(
        data: NavigationBarThemeData(
          labelBehavior: NavigationDestinationLabelBehavior.onlyShowSelected,
          indicatorColor:const  Color.fromARGB(255, 25, 27, 29),
          backgroundColor:const  Color.fromARGB(255, 25, 27, 29),
          labelTextStyle: MaterialStateProperty.all(TextStyle(fontSize: 15, color: index==0? const Color.fromARGB(255, 234, 171, 0):const Color.fromARGB(255, 235, 235, 235), fontWeight: FontWeight.w500))
        ),
        child: NavigationBar(
          height: 75,
          backgroundColor:const  Color.fromARGB(255, 25, 27, 29),
          selectedIndex: index,
          onDestinationSelected: (index)=> setState(() {
            this.index = index;
          }),
          destinations: [
            NavigationDestination(icon: Icon(Icons.explore, color: index ==0?const Color.fromARGB(255, 234, 171, 0):const Color.fromARGB(255, 235, 235, 235),size:30), 
            label: "Explore",
            ),
            NavigationDestination(icon: Icon(Icons.shopping_basket, color: index ==1?const Color.fromARGB(255, 234, 171, 0):const Color.fromARGB(255, 235, 235, 235),size:30), 
            label: "Shop",
            ),
            NavigationDestination(icon: Icon(Icons.wallet, color: index ==2?const Color.fromARGB(255, 234, 171, 0):const Color.fromARGB(255, 235, 235, 235),size:30), 
            label: "Wallet",
            ),
            NavigationDestination(icon: Icon(Icons.person, color: index ==3?const Color.fromARGB(255, 234, 171, 0):const Color.fromARGB(255, 235, 235, 235),size:30), 
            label: "Profile",
            )
          ]
          ),
      ),
    );
  }
}

