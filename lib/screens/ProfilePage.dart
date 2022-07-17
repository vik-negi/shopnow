// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:shopnow/screens/Authentication.dart';
import 'package:shopnow/screens/SigninPage.dart';
import 'package:shopnow/utils/routes.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:shopnow/widgets/UserInfo.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {



  FirebaseAuth auth = FirebaseAuth.instance;
    
      signOut() async {
        await auth.signOut().then((value) => Navigator.of(context).pushAndRemoveUntil(MaterialPageRoute(builder: (context)=>const SignIn()), (route) => false));
        setState(() { });
        return const SignIn();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 23, 25, 26),
      body: Padding(
        padding: const EdgeInsets.only(left:20, right: 20, top: 30),
        child: ListView(
          children: [
            Container( 
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: const Color.fromARGB(255, 32, 36, 39),
              ), 
              child :const Padding(
                padding: EdgeInsets.all(15),
                child: UserAccountPortion(),
              )
            ),
            const SizedBox(height: 50,),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: const Color.fromARGB(255, 32, 36, 39),
              ),
              child: Column(
                children: [
                  const Padding(
                    padding: EdgeInsets.symmetric(vertical: 6.0),
                    child: ListTile(
                    leading: Icon(Icons.verified_user, color: Colors.white,),
                    title: Text("Credit Score",
                      style: TextStyle(
                      fontSize: 18,
                      color: Colors.white,
                      fontWeight: FontWeight.w500
                      )
                    ),
                    trailing: Icon(Icons.arrow_right_sharp, color: Colors.white, size: 30),
                ),
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(vertical: 6.0),
                    child: ListTile(
                    leading: Icon(Icons.calculate, color: Colors.white,),
                    title: Text("Installment Calculator",
                      style: TextStyle(
                      fontSize: 18,
                      color: Colors.white,
                      fontWeight: FontWeight.w500
                      )
                    ),
                    trailing: Icon(Icons.arrow_right_sharp, color: Colors.white, size: 30),
                ),
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(vertical: 6.0),
                    child: ListTile(
                    leading: Icon(Icons.location_history, color: Colors.white,),
                    title: Text("Invite You Friends",
                      style: TextStyle(
                      fontSize: 18,
                      color: Colors.white,
                      fontWeight: FontWeight.w500
                      )
                    ),
                    trailing: Icon(Icons.arrow_right_sharp, color: Colors.white, size: 30),
                ),
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(vertical: 6.0),
                    child: ListTile(
                    leading: Icon(Icons.message, color: Colors.white,),
                    title: Text("Support",
                      style: TextStyle(
                      fontSize: 18,
                      color: Colors.white,
                      fontWeight: FontWeight.w500
                      )
                    ),
                    trailing: Icon(Icons.arrow_right_sharp, color: Colors.white, size: 30),
                ),
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(vertical: 6.0),
                    child: ListTile(
                    leading: Icon(Icons.info, color: Colors.white,),
                    title: Text("About US",
                      style: TextStyle(
                      fontSize: 18,
                      color: Colors.white,
                      fontWeight: FontWeight.w500
                      )
                    ),
                    trailing: Icon(Icons.arrow_right_sharp, color: Colors.white, size: 30),
                ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 20.0, bottom: 10),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Colors.transparent,
                      ),
                      onPressed: () { 
                        
                        // AuthenticationService.signOut(); 
                        signOut();
                      },
                      child: const ListTile(
                      leading: Icon(Icons.logout, color: Color.fromRGBO(255, 99, 99, 1),),
                      title: Text("Logout",
                        style: TextStyle(
                        fontSize: 18,
                        color: Color.fromRGBO(255, 99, 99, 1),
                        fontWeight: FontWeight.w500
                        )
                      ),
                      trailing: Icon(Icons.arrow_right_sharp, color: Colors.redAccent, size: 30),
                                    ),
                    ),
                  ),
                ],
              )
            ),
            const SizedBox(height: 50,),
          ],
        ),
    ),
    );
  }
}



class UserAccountPortion extends StatefulWidget {
  const UserAccountPortion({Key? key}) : super(key: key);

  @override
  State<UserAccountPortion> createState() => _UserAccountPortionState();
}

class _UserAccountPortionState extends State<UserAccountPortion> {
  User? user = FirebaseAuth.instance.currentUser;

  @override
  Widget build(BuildContext context) {
    return Column (
      children : [
      ListTile(
      leading: const CircleAvatar(
        backgroundImage: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQI5AIyuub1fFa92zVOo09Tlsr5vguctsBAjg&usqp=CAU"),
      ),
        title: Text(
          UserInformation.userName.toString(),
      style: const TextStyle(
          fontSize: 20,
          color: Colors.white,
          fontWeight: FontWeight.w600
        )
        ),
        subtitle: const Text("Premium",
      style: TextStyle(
          fontSize: 14,
          color: Colors.white,
          fontWeight: FontWeight.w600
        )
        ),
        trailing: const Icon(Icons.arrow_right_sharp,
      color: Colors.white,
      size : 30,
        ),
        ),
      Padding(
        padding: const EdgeInsets.symmetric(vertical:15, horizontal:0),
        child: SizedBox(
          height: 4,
          child: Container(color: const Color.fromARGB(255, 43, 47, 51),)
        ),
      ),
      Container(
        color: const Color.fromARGB(255, 43, 47, 51),
        padding: const EdgeInsets.symmetric(vertical: 20, horizontal:0),
        child: const UpgradeSection(),
      )

    ]
    );
  }
}


class UpgradeSection extends StatelessWidget {
  const UpgradeSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
      return Column(
      children: [
        Row(
          children: [
            const Icon(Icons.upgrade_rounded,
              color: Colors.white,
              size: 30,
            ),
            Padding(
              padding: const EdgeInsets.only(left:8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text("Upgrade your Account!",
                    style: TextStyle(
                  fontSize: 18,
                  color: Colors.white,
                  fontWeight: FontWeight.w600
                )
                  ),
                  SizedBox(height: 5,),
                  Text("Get Unlimited Premium Account For More Discount.",
                    style: TextStyle(
                  fontSize: 11,
                  color: Colors.white,
                  fontWeight: FontWeight.w300
                )
                  ),
                ],
              ),
            )
          ],
        ),
        const SizedBox(height: 15,),
        ElevatedButton(onPressed: () async => { 
          await Navigator.of(context).pushNamed(MyRoutes.exploreRoute)
          },
          style: ElevatedButton.styleFrom(
            textStyle:const  TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
            primary: const Color.fromARGB(255, 234, 171, 0),
            // padding: const EdgeInsets.symmetric(vertical: 2, horizontal: 80),
            minimumSize: const Size(300, 50),

          ), 
          child: const Text("Upgrade Now")),
      ],
    );
  }
}

// Box Decoration

class BoxDecorationGrey extends StatelessWidget {
  const BoxDecorationGrey({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}