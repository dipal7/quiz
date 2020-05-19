import 'package:firstflutter/screens/register/home.dart';
import 'package:firstflutter/services/auth.dart';
import 'package:flutter/material.dart';

class SignIn extends StatefulWidget {
  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  
    final AuthService _auth=AuthService();
    final _formKey=GlobalKey<FormState>();

  String email='';
  String password='';
  String error='';
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       backgroundColor: Colors.blueAccent[400],
      body: Container(
        child: Form(
          key: _formKey, 
          child:Align(
            alignment: Alignment.center,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Image(
                image: AssetImage('lib/assets/Pic2.png'),
                height: 100,
                ),
                Align(alignment: Alignment.center),
              SizedBox(height: 20),
              TextFormField(
                decoration: InputDecoration(
                  hintText:'Enter your Email',
                  fillColor:Colors.white,
                  filled:true,                
                   enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(50.0)),
                borderSide: BorderSide(color: Colors.blue, width: 2),
                   ),
                  focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(50.0)),
                borderSide: BorderSide(color: Colors.blue),
              
                  ),
                ),
                validator: (val)=> val.isEmpty ? 'Enter an email':null,
                
                onChanged: (val){
                  setState(() => email=val);

                }
              ),
              SizedBox(height:20),
              TextFormField(
                decoration: InputDecoration(
                  hintText:'Enter your Password',
                  fillColor:Colors.white,
                  filled:true,                
                   enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(50.0)),
                borderSide: BorderSide(color: Colors.blue, width: 2),
                   ),
                  focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(50.0)),
                borderSide: BorderSide(color: Colors.blue),
              
                  ),
                ),
                
                validator: (val)=> val.length<6 ? 'Enter a password of 6+ characters ':null,
               
                obscureText: true,
                onChanged: (val){
                  setState(() => password=val);

                }
              ),
              SizedBox(height:20),
              RaisedButton(
                shape: StadiumBorder(),
                color: Colors.blue[900],
                child: Text(
                  'Sign In',
                  style: TextStyle(color:Colors.white),

                ),
                onPressed: () async{
                  if(_formKey.currentState.validate()){
                    dynamic result= await _auth.signInWithEmailAndPassword(email,password);
                     
                    if(result==null){
                    setState(() =>  error='Could not sign in with those credentials');
                    }                 
                    if(result!=null){
                       Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Home()),);
       
                    }
                  }
                  
                },
              ),
              SizedBox(height:12),
              Text(
                error,
                style: TextStyle(color:Colors.red, fontSize:14),
              ),
            ],
          ),
        ),
      ),
      ),
    );
  }
}