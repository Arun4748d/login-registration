import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:sign_login/login_screen/loginscreen.dart';

class signup extends StatefulWidget {
  const signup({super.key});

  @override
  State<signup> createState() => _signupState();
}

class _signupState extends State<signup> {
   final _formKey =GlobalKey<FormState>();
  
   
    bool _isObscured = true; 
    bool _isObscuredcpas=true; 
    TextEditingController namcontroller=TextEditingController();
     TextEditingController namcontrollerpas=TextEditingController();
     TextEditingController namcontrollercon=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30,),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              Container(
                child: Text("User Registration",style: TextStyle(
                  fontWeight:FontWeight.bold,
                  fontSize: 35,
                     
                ),),
                
              ),
              SizedBox(height: 40,),
 // email
              TextFormField(
                 
                 controller: namcontroller,
                 
                decoration: InputDecoration(
                  label: Text("email"),
                  hintText: "...........",
                  
                  contentPadding: EdgeInsets.symmetric(horizontal: 20,),
                  enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(18),
                  borderSide: BorderSide(color: Colors.black,width: 2)),
              
                  focusedBorder: OutlineInputBorder(borderSide: BorderSide(color:Colors.black,width: 2),
                  borderRadius: BorderRadius.circular(18),),
              
                  errorBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(18),
                  borderSide: BorderSide(color: Colors.black,width: 2),),
              
                  focusedErrorBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(18),
                  borderSide: BorderSide(color: Colors.black,width: 2),)
                ),
                validator: (value) {
                  if ( value==null || value.isEmpty ){
                  return "enter the email";}
                  else if (!namcontroller.text.contains("@")){
                    return "missing @";
                  }
                  else {
                    return null;
                  }
                },
                
              ),
              SizedBox(height: 12,),
 // password textformfield
              TextFormField(
                controller: namcontrollerpas,
                obscureText: _isObscured,
                decoration: InputDecoration(
                  label: Text("password"),
                  hintText: "...........",
                  contentPadding: EdgeInsets.symmetric(horizontal: 20,),
                  enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(18),
                  borderSide: BorderSide(color: Colors.black,width: 2)),
              
                  focusedBorder: OutlineInputBorder(borderSide: BorderSide(color:Colors.black,width: 2),
                  borderRadius: BorderRadius.circular(18),),
              
                  suffix: IconButton(onPressed: () {
                    setState(() {
                      _isObscured = !_isObscured;
                    });
                  }, icon: Icon(_isObscured ? Icons.visibility_off : Icons.visibility)),
              
                  errorBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(18),
                  borderSide: BorderSide(color: Colors.black,width: 2)),
              
                  focusedErrorBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(18),
                  borderSide: BorderSide(color: Colors.black,width: 2))
              
              
                ),
                validator: (value) {
                  if(value==null || value.isEmpty ){
                    return "please enter the password";
                  }else if(namcontrollerpas.text.length<8){
                    return "the password contains atleat 8 letters ";
                  }else{
                    return null;
                  }
                },
                
              ),
                SizedBox(height: 12,),
   // confirm password textformfield
              TextFormField(
                controller: namcontrollercon,
                obscureText: _isObscuredcpas,
                decoration: InputDecoration(
                  label: Text("Confirm password"),
                  hintText: "...........",
                  contentPadding: EdgeInsets.symmetric(horizontal: 20,),
                  enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(18),
                  borderSide: BorderSide(color: Colors.black,width: 2)),
              
                  focusedBorder: OutlineInputBorder(borderSide: BorderSide(color:Colors.black,width: 2),
                  borderRadius: BorderRadius.circular(18),),
              
                  errorBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(18),
                  borderSide: BorderSide(color: Colors.black,width: 2),),
              
                  focusedErrorBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(18),
                  borderSide: BorderSide(color: Colors.black,width: 2),
                  ),
              
                  suffix: IconButton(onPressed: () {
                    setState(() {
                      _isObscuredcpas=!_isObscuredcpas;
                    });
                  }, icon: Icon(_isObscuredcpas ? Icons.visibility_off : Icons.visibility))
                ),
                validator: (value) {
                  if(value==null || value.isEmpty){
                    return "confirm password is empty";
                  }else if(value !=namcontrollerpas.text){
                    return "password is not matching";
                  }
                },
                
              ),
              SizedBox(height: 30,),
// sign up button
              Row(
                children: [
                  
                  Expanded(
                    child: SizedBox
                    (height: 50,
                      child: ElevatedButton(onPressed: () {
                        setState(() {   
                        });
                        if(
                        _formKey.currentState!.validate()){
                         return  Navigator.pop(context, MaterialPageRoute(builder: (context) => Loginscreen()));
                        }else{
                          return null;
                        }
                       
          
      
                        
                      }, child: Text("sign up",
                      style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,
                      fontSize: 20,
                      ),
                       ),
                      style: ButtonStyle(
                        backgroundColor: WidgetStatePropertyAll(Colors.black),
                      
                      ),
                      ),
                    ),
                  ),
                ],
              ),
              Spacer(),
// text button
             Row(
              mainAxisAlignment: MainAxisAlignment.center,
               children: [
                 Text("Already have an account?",
                 style: TextStyle(fontSize: 15),),
                 TextButton(onPressed: () {
                   Navigator.pop(context, MaterialPageRoute(builder:(context) => Loginscreen(),));
                 }, child: Text("login",
                 style: TextStyle(fontSize: 15,
                 color: Colors.blue),),),
               ],
             ),
            ],
          ),
        ),
      )
    );
  }
}