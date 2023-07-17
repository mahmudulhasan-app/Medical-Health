import 'package:doctor/Screen/login_screen.dart';
import 'package:doctor/Widgets/Navbar_roots.dart';
import 'package:flutter/material.dart';
import 'SignUpScreen.dart';
class WelcomeScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
  return Material(
    child: Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      padding: EdgeInsets.all(10),
      child: Column(

        children: [
          SizedBox(height: 10),
          Align(alignment: Alignment.centerRight,
          child: TextButton(
            onPressed: (){
Navigator.push(context, MaterialPageRoute(
    builder:(context)=>Navbarroots() ),
);
            },
            child: Text("SKIP", style: TextStyle(
            color: Colors.cyan,
            fontSize: 20,
          ),
          ),
          ),
          ),
          SizedBox(height: 50,),
          Padding(padding: EdgeInsets.all(20),child: Image.asset("images/doctors.png"),
          ),
          SizedBox(height: 50,),
          Text("Doctors Appointment",style: TextStyle(
            color: Colors.deepPurpleAccent,
            fontSize: 35,
            fontWeight: FontWeight.bold,
            letterSpacing: 1,
            wordSpacing: 2,
          ),
          ),
SizedBox(height: 10,),
          Text("Appoint Your Doctor",style: TextStyle(
            color: Colors.black45,
            fontSize: 18,
            fontWeight: FontWeight.w500,
          ),
          ),
          SizedBox(height: 60,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
Material(color: Colors.deepPurpleAccent,
borderRadius: BorderRadius.circular(10),
  child: InkWell(
    onTap: (){
      Navigator.push(context, MaterialPageRoute(
    builder:(context)=> LoginScreen(),));
    },
    child: Padding(padding: EdgeInsets.symmetric(vertical: 15,horizontal: 40,),
    child: Text("Log In",style: TextStyle(
      color: Colors.white,
      fontSize: 20,
      fontWeight: FontWeight.bold,
    ),
    ),
    ),
  ),
),
    Material(color: Colors.deepPurpleAccent,
borderRadius: BorderRadius.circular(10),
  child: InkWell(
    onTap: (){
      Navigator.push(context, MaterialPageRoute(
    builder:(context)=> SignUpScreen()),
);
    },
    child: Padding(padding: EdgeInsets.symmetric(vertical: 15,horizontal: 40,),
    child: Text("Sign up",style: TextStyle(
      color: Colors.white,
      fontSize: 20,
      fontWeight: FontWeight.bold,
    ),
    ),),
  ),
),
            ],
          ),
        ],
      ),
    ),
  );
  }

}