import 'package:firebase_auth/firebase_auth.dart';


User? user = FirebaseAuth.instance.currentUser;
class UserInformation{
  static String? userName(){
    String? name = user?.email;
    return name;
  }
}