class Validator{
  static String? validateName({required String? name}){
    if (name == null) return null;
    if(name.isEmpty) return "Name can't be empty";
    return null;
  }

  static String? validateEmail({required String email}){
    //by including ? allow us to return null
    if(email==null) return null;
    RegExp emailRegExp = RegExp(
      r"^[a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,253}[a-zA-Z0-9])?(?:\.[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,253}[a-zA-Z0-9])?)*$"
    );

    if(email.isEmpty) {
      return "Email can't be empty";
    } else if(!emailRegExp.hasMatch(email)) {
      return "Enter a correct email";
    }
    return null;
  }

  static String? validatePassword({required String password}){
    if(password == null){
      return null;
    }
    if(password.isEmpty){
      return "Password can't be empty";
    }
    else if(password.length < 8){
      return "Enter a password with length at least 8";
    }
    return null;
  }
}