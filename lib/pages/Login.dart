import 'package:flutter/material.dart';
import 'package:flutter_catalog/utils/routs.dart';

class Login_page extends StatefulWidget {
  const Login_page({Key? key}) : super(key: key);

  @override
  State<Login_page> createState() => _Login_pageState();
}

class _Login_pageState extends State<Login_page> {
  String name="";
  bool changebutton=false;
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset("assets/images/login_image.png",fit: BoxFit.cover,),
            SizedBox(height: 20,),
            Text("Welcome $name",style: TextStyle(fontSize:24,fontWeight: FontWeight.w600 ),),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 16.0,horizontal: 32.0),
              child: Column(
                children: [
                  TextFormField(
                    decoration: InputDecoration(
                        hintText:"Enter user name",
                        labelText: "User Name"
                    ),
                    onChanged: (value){
                      setState((){
                        name=value;
                      });
                    },
                  ),
                  TextFormField(
                    obscureText:true,
                    decoration: InputDecoration(
                        hintText:"Enter Password",
                        labelText: "Password"
                    ),
                  ),
                  SizedBox(height: 20,),
                  // ElevatedButton(
                  //     onPressed: (){
                  //       Navigator.pushNamed(context, MyRoutes.homeRoute);
                  //     },
                  //     child: Text("Login"),
                  // style: ButtonStyle(
                  //   foregroundColor: MaterialStateProperty.all(Color(0xfffffffff)),
                  //   padding: MaterialStateProperty.all(EdgeInsets.symmetric(horizontal: 30))
                  // ),
                  // ),
                  InkWell(
                    onTap: (){
                      setState((){
                        changebutton=true;
                      });
                      // Navigator.pushNamed(context, MyRoutes.homeRoute);
                    },
                    child: AnimatedContainer(
                      duration: Duration(seconds: 1),
                      height: 50,
                      width:changebutton?50: 150,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        color: Colors.deepPurple,
                        borderRadius: BorderRadius.circular(changebutton?100:8)
                      ),
                      child:changebutton?Icon(Icons.done,color: Colors.white,): Text('Login',style: TextStyle(color: Colors.white),),
                    ),
                  )

                ],
              ),
            ),

          ],
        ),
      )
    );
  }
}
