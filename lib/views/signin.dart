import 'package:flutter/material.dart';
import 'package:flutter_chat/widgets/Widget.dart';


class SignIn extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar:AppBar(
    title: Image.asset("assets/images/logo.png",width: 200,),
  )
   , body: SingleChildScrollView(
     child: Container(
       height: MediaQuery.of(context).size.height-90,
       alignment: Alignment.bottomCenter,
       child: Container(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: Column(
              mainAxisSize: MainAxisSize.min,
            children: [
              TextField(
                style: simpleTextFieldStyle(),
                decoration:textFieldInputDecoration('email') ,
              ),
              TextField(
                style: simpleTextFieldStyle(),
                decoration:textFieldInputDecoration('password'),
              ),
              SizedBox(height: 8,),
              Container(alignment:Alignment.centerRight ,
                child: Container( child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 8),
                  child: Text('Forget Password',style: simpleTextFieldStyle(),),
                ),),
             ),
             SizedBox(height: 8,),
             Container(alignment: Alignment.center,
             width: MediaQuery.of(context).size.width,
             padding: EdgeInsets.symmetric(vertical: 20),
             decoration: BoxDecoration(
               borderRadius:BorderRadius.circular(30) ,
               gradient:LinearGradient(colors:[Colors.amber,Colors.indigo] ) ),
               child: Text('SignIn',style: TextStyle(color: Colors.white,fontSize: 17),),
             ),
             SizedBox(height:16,),
             Container(alignment: Alignment.center,
             width: MediaQuery.of(context).size.width,
             padding: EdgeInsets.symmetric(vertical: 20),
             decoration: BoxDecoration(
               borderRadius:BorderRadius.circular(30) ,
               gradient:LinearGradient(colors:[Colors.amber,Colors.indigo] ) ),
               child: Text('SignIn With Google',style: TextStyle(color: Colors.white,fontSize: 17),),
             ),
             SizedBox(height: 16,),
             Row(  mainAxisAlignment: MainAxisAlignment.center , children: [
               Text('Dont have account?',style: mediumTextStyle(),),
               Text('Register now',style: mediumTextStyle(),)
             ],)
     
     
            ],),
          ),
        ),
     ),
   ),
    );
  }
}