import 'package:flutter/material.dart';
import 'package:sign_login/home_screen/homescreen.dart';
import 'package:sign_login/signup/signup.dart';

class Loginscreen extends StatefulWidget {
  const Loginscreen({super.key});

  @override
  State<Loginscreen> createState() => _LoginscreenState();
}

class _LoginscreenState extends State<Loginscreen> {
      final _formKey =GlobalKey<FormState>();
  

      bool _isObscuredcpas=true; 

      TextEditingController namcontroller=TextEditingController();
       TextEditingController namcontrollerpd=TextEditingController();

      
  @override

  Widget build(BuildContext context) {
    return Scaffold( appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              Container(
                child: Text("Login",style: TextStyle(fontWeight: FontWeight.bold,
                fontSize: 35,
                
                ),),
          
              ),
              SizedBox(height: 50,),
          // email
              TextFormField(
               
               controller: namcontroller,
               
                decoration: InputDecoration(
                  label: Text("email"),
                  hintText: ".......",
                      
                  contentPadding: EdgeInsets.symmetric(horizontal: 20,),
                  enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(18),
                 ),
                      
                  focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(18),
                  borderSide: BorderSide(color: Colors.black,width: 2)),
                        
                  errorBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(18),
                    borderSide: BorderSide(color: Colors.black,width: 2),),
                
                    focusedErrorBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(18),
                    borderSide: BorderSide(color: Colors.black,width: 2),)
                  
                ),
                   validator: (value) {
                if (value==null || value.isEmpty){
                  return "please enter the email";
                }else if (!namcontroller.text.contains("@")){
                  return "missing @";
                  
                }else{
                  return null;
                }
                
                
              },
                            
              ),
              SizedBox(height: 12,),
           // password textformfield
              TextFormField(
                 obscureText: _isObscuredcpas,
                controller: namcontrollerpd,
                decoration: InputDecoration(
                  label: Text("password"),
                  hintText: "........",
                  
                  contentPadding: EdgeInsets.symmetric(horizontal: 20,),
                  enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(18),
                  ),
              
                  focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(18),
                  borderSide: BorderSide(color: Colors.black,width: 2),),
                        
                   errorBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(18),
                    borderSide: BorderSide(color: Colors.black,width: 2),),
                
                    focusedErrorBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(18),
                    borderSide: BorderSide(color: Colors.black,width: 2),),
                        
                    suffix: IconButton(onPressed: (){
                      setState(() {
                        _isObscuredcpas=!_isObscuredcpas;
                      });
                    }, icon: Icon(_isObscuredcpas? Icons.visibility_off: Icons.visibility),)
              
                ),
                  validator: (value) {
                  if (value==null || value.isEmpty){
                    return "please enter the password";
                  }else if (namcontrollerpd.text.length<8){
                    return "pasword contains atleast 8 characters";
                    
                  }else{
                    return null;
                  }
                },
                         
                       
              ),
          // forget password  
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  TextButton(onPressed: () {
                    
                  }, child: Text("forget password")),
                ],
              ),
              SizedBox(height: 20,),
          // submit button
              Row(
                children: [
                  Expanded(
                    child: ElevatedButton(onPressed: (){
                      setState(() {
                       
                      });
                          
                       _formKey.currentState!.validate();
                     
          
                        Navigator.push(context, MaterialPageRoute(builder: (context) => Homescreen(),));
                    }, child: Text("submit",style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),),
                    style: ButtonStyle(backgroundColor: WidgetStatePropertyAll(Colors.black)),),
                  ),
                ],
              ),
              Spacer(),
          // text button
               Row(
              mainAxisAlignment: MainAxisAlignment.center,
               children: [
                 Text("dont have an account?",
                 style: TextStyle(fontSize: 15),),
                 TextButton(onPressed: () {
                   setState(() {
                     
                   });
                   Navigator.push(context, MaterialPageRoute(builder: (context) => signup(),));
                 }, child: Text("registeration",
                 style: TextStyle(fontSize: 15,
                 color: Colors.blue),),),
               ],
             ),
            ],
          ),
        ),
      ),
    );
  }
}