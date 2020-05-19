import 'package:firstflutter/screens/register/sign_in.dart';
import 'package:firstflutter/screens/register/sign_up.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:firstflutter/models/user.dart';

class Register extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    final user=Provider.of<User>(context);

    return Scaffold(
   backgroundColor: Colors.blueAccent[400],
   body: Column(
     mainAxisAlignment: MainAxisAlignment.center,
     crossAxisAlignment: CrossAxisAlignment.center,
     children: <Widget>[
     Spacer(flex:18),
       Container(
         child:Center(       
     child: Text(
       ' QuizStation',
       style: TextStyle(
         fontSize: 30,
         fontWeight: FontWeight.bold,
         letterSpacing: 2,
         color: Colors.white,
            ),
         ),
         
       ),
       ),
       
     Container(
       padding: EdgeInsets.all(20),
       child:Text(
         'Welcoming to the quizworld',
        style: TextStyle(
         color: Colors.white, 
         fontSize: 20,
        ),
         ) ,
       ),
       Spacer(flex:3),
       Container(
         width: 300,
       child:RaisedButton.icon(
       shape: StadiumBorder(),
       onPressed: () {
         Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => SignIn()),);
       },
       
       label: Text(
         'Log in using email',
         style: TextStyle(
          fontSize:15,
          
         ),
       ),
       color: Colors.white,
       textColor: Colors.blueAccent[400],
       icon: Icon(
         Icons.mail,
       ),
      ),
       ),
       Spacer(flex:1),
       Container(
         child: Text(
           'OR',
           style: TextStyle(
             fontSize:20,
             color:Colors.white,
           ),
         ),
       ),
       Spacer(flex:1),
      Container(
        width:300,
        child:RaisedButton(
       shape: StadiumBorder(),
       onPressed: ()  { Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => SignUp()),);},
       child: Text(
         'Sign up as a new User ',
         style: TextStyle(
          fontSize:15,
         ),
       ),
       color: Colors.white,
       textColor: Colors.blueAccent[400],
       
       ),
      ),
      Spacer(flex:24),
     ],
   ),
  );  
    }
}

