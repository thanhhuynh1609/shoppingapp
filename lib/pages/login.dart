import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:shopping_app/pages/bottomnav.dart';
import 'package:shopping_app/pages/home.dart';
import 'package:shopping_app/pages/signup.dart';
import 'package:shopping_app/pages/widget/support_widget.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  String email = "", password = "";

  TextEditingController namecontroller = new TextEditingController();
  TextEditingController mailcontroller = new TextEditingController();
  TextEditingController passwordcontroller = new TextEditingController();

  final _formkey = GlobalKey<FormState>();

  userLogin() async {
    try {
      await FirebaseAuth.instance
          .signInWithEmailAndPassword(email: email, password: password);
      Navigator.push(context, MaterialPageRoute(builder: (context) => Bottomnav()));
    } on FirebaseException catch (e) {
      if (e.code == 'user-not-found') {
        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
            backgroundColor: Colors.redAccent,
            content: Text(
              "No User Found for thar Email",
              style: TextStyle(fontSize: 20),
            )));
      } else if (e.code == "wrong-password") {
        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
            backgroundColor: Colors.redAccent,
            content: Text(
              "Wrong Password Provided by User",
              style: TextStyle(fontSize: 20),
            )));
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.only(top: 40, left: 20, right: 20, bottom: 40),
          child: Form(
            key: _formkey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset("images/login.png"),
                Center(
                    child: Text(
                  "Sign In",
                  style: AppWidget.semiboldTextFeildStyle(),
                )),
                SizedBox(
                  height: 20,
                ),
                Text(
                  "Please enter the details below to\n                     continue.",
                  style: AppWidget.lightTextFeildStyle(),
                ),
                SizedBox(
                  height: 40,
                ),
                Text(
                  "Email",
                  style: AppWidget.semiboldTextFeildStyle(),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  padding: EdgeInsets.only(left: 20),
                  decoration: BoxDecoration(
                      color: Color(0xfff4f5f9),
                      borderRadius: BorderRadius.circular(10)),
                  child: TextFormField(
                    validator: (value){
                      if(value==null||value.isEmpty){
                        return 'Please Enter your email';
                        }
                        
                        return null;
                    },
                    controller: mailcontroller,
                    decoration: InputDecoration(
                        border: InputBorder.none, hintText: "Email"),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  "Password",
                  style: AppWidget.semiboldTextFeildStyle(),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  padding: EdgeInsets.only(left: 20),
                  decoration: BoxDecoration(
                      color: Color(0xfff4f5f9),
                      borderRadius: BorderRadius.circular(10)),
                  child: TextFormField(
                    controller: passwordcontroller,
                    validator: (value){
                      if(value==null||value.isEmpty){
                        return 'Please Enter your Password';
                        }
                        
                        return null;
                    },
                    decoration: InputDecoration(
                        border: InputBorder.none, hintText: "Password"),
                  ),
                ),
                SizedBox(
                  height: 29,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      "Forgot Passord?",
                      style: TextStyle(
                          color: Colors.green,
                          fontSize: 18,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                SizedBox(
                  height: 30,
                ),
                GestureDetector(
                  onTap: (){
                    if(_formkey.currentState!.validate()){
                      setState(() {
                        email=mailcontroller.text;
                        password=passwordcontroller.text;
                      });
                    }
                    userLogin();
                  },
                  child: Center(
                    child: Container(
                      width: MediaQuery.of(context).size.width / 2,
                      padding: EdgeInsets.all(18),
                      decoration: BoxDecoration(
                          color: Colors.green,
                          borderRadius: BorderRadius.circular(20)),
                      child: Center(
                          child: Text(
                        "LOGIN",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.bold),
                      )),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Don't have an account? ",
                      style: AppWidget.lightTextFeildStyle(),
                    ),
                    GestureDetector(
                        onTap: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) => SignUp()));
                        },
                        child: Text(
                          "Sign up",
                          style: TextStyle(
                              color: Colors.green,
                              fontSize: 18,
                              fontWeight: FontWeight.bold),
                        )),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
