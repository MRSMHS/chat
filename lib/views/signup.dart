import 'package:flutter/material.dart';
import 'package:flutter_chat/widgets/Widget.dart';

class SignUp extends StatefulWidget {
  const SignUp({ Key? key }) : super(key: key);

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
TextEditingController userNameTextEditingController=new TextEditingController();
TextEditingController emailTextEditingController=new TextEditingController();
TextEditingController passwordTextEditingController=new TextEditingController();



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
                controller: userNameTextEditingController,
                style: simpleTextFieldStyle(),
                decoration:textFieldInputDecoration('username') ,
              ),TextField(
                controller: emailTextEditingController,
                style: simpleTextFieldStyle(),
                decoration:textFieldInputDecoration('email') ,
              ),
              TextField(
                 controller: passwordTextEditingController,
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
               child: Text('SignUp',style: TextStyle(color: Colors.white,fontSize: 17),),
             ),
             SizedBox(height:16,),
             Container(alignment: Alignment.center,
             width: MediaQuery.of(context).size.width,
             padding: EdgeInsets.symmetric(vertical: 20),
             decoration: BoxDecoration(
               borderRadius:BorderRadius.circular(30) ,
               gradient:LinearGradient(colors:[Colors.amber,Colors.indigo] ) ),
               child: Text('SignUp With Google',style: TextStyle(color: Colors.white,fontSize: 17),),
             ),
             SizedBox(height: 16,),
             Row(  mainAxisAlignment: MainAxisAlignment.center , children: [
               Text('already have account?',style: mediumTextStyle(),),
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