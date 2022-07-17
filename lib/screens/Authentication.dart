import 'package:firebase_auth/firebase_auth.dart';
import 'package:shopnow/screens/SigninPage.dart';

class AuthenticationService{

  Future <void> signOut() async{
    FirebaseAuth auth = FirebaseAuth.instance;
    await auth.signOut();
  }

  static Future<User?> SignUp({
    required String name,
    required String email,
    required String password,
  }) async{
    FirebaseAuth auth = FirebaseAuth.instance;
    User? user;
    try{
      UserCredential userCredential = await auth.createUserWithEmailAndPassword(email: email, password: password);
      user = userCredential.user;
      await user!.updateDisplayName(name);
      await user.reload();
      user = auth.currentUser;

    }on FirebaseAuthException catch(e){
      if(e.code == 'weak password'){
        print("Password is too weak");
      }else if (e.code == 'email-already-in-use') {
        print('The account already exists for that email.');
      }
    } catch (e) {
      print(e);
    }
    return user;
    }
  
  static Future<User?> singIn({
    required String email,
    required String password
  }) async{
    FirebaseAuth auth = FirebaseAuth.instance;
    User? user;

    try{
      UserCredential userCredential = await auth.signInWithEmailAndPassword(email: email, password: password);
      user = userCredential.user;
    } on FirebaseAuthException catch(e){
      if(e.code == "user-not-found"){
        print("No user found for that email.");
      }else if(e.code == "wrong-password"){
        print("Wrong credentials");
      }
    }
    return user;
  }


  static Future<User?> refreshUser(User user) async {
    FirebaseAuth auth = FirebaseAuth.instance;

    await user.reload();
    User? refreshedUser = auth.currentUser;

    return refreshedUser;
  }

}
