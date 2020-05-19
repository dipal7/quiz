import 'dart:ui';

import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body:Column(
                     
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children:<Widget>[
                    Flexible(
                   child:SingleChildScrollView( 
                  child:Container(
                    height: MediaQuery.of(context).size.height/2,
                    width:MediaQuery.of(context).size.width ,
                  color: Colors.blue[100],
                  child:Column(
                  children:<Widget>[
                    Spacer(flex:32),
                  Center(
                 child:Image(
                image: AssetImage('lib/assets/Pic3.png'),
                height: MediaQuery.of(context).size.height/6,
                ),
                  ),
                  Spacer(),       
                Text(
                  'Start Free Trial',
                  style: TextStyle(
                    color:Colors.blue[900],
                    fontSize:35,
                    fontWeight: FontWeight.bold,
                  ),
                ),   
                    Spacer(),       
                                      
                  Text(
                  'Get a quiz with 30 questions',
                  style: TextStyle(
                    color:Colors.blue[900],
                    fontSize:20,
                  ), 
                  ),
                  
                
                     InkWell(
                     child: Text(
                        '>',
                        style: TextStyle(
                          color:Colors.white,
                          fontSize:60,
                        ),
                      ),
                      onTap: (){},
                    ),
                  ],
                ),
                   ),
                   ),
                   ),
                  //Spacer(flex:2) ,
                 Flexible(
              child:SingleChildScrollView(
               child:Container(
                  height: MediaQuery.of(context).size.height/2,
                    width: MediaQuery.of(context).size.width,
                 color: Colors.blue[900],
                  child:Column(
                    children: <Widget>[
                     Spacer(flex: 16),                             
                  Center(
                child:Image(
                image: AssetImage('lib/assets/Pic1.png'),
                height: MediaQuery.of(context).size.height/6,
                ),
                ),

              Center(
                 child:Text(
                  'GET FULL VERSION',
                  style: TextStyle(
                    color:Colors.white,
                    fontSize:30,
                    fontWeight: FontWeight.bold,
                  ),
                ),   
                 ),
               Center(
                  child:Text(
                  'Get the premium vesion with all quizzes',
                  style: TextStyle(
                    color:Colors.white,
                    fontSize:20,
                  ), 
                  ),
                 ),
                   
                  InkWell( 
                 child:Center(
                     child: Text(
                        '>',
                        style: TextStyle(
                          color:Colors.white,
                          fontSize:60,
                        ),
                      ),
                    ),
                     onTap: (){},
                    ),
            Spacer(flex:32),
      ]  
          ),  
      ), 
              ),
                 ),
      ],
    ),
       
  );
  }
}