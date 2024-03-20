import 'package:firebase/third.dart';
import 'package:flutter/material.dart';

class First extends StatefulWidget {

  const First({Key? key}) : super(key: key);

  @override
  State<First> createState() => _FirstState();
}

class _FirstState extends State<First> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(child: Text('Sign Up',style: TextStyle(color: Colors.black,fontSize: 50,fontWeight: FontWeight.bold),)),

            SizedBox(height: 15,),

            Center(child: Text("Create an account,it's free",style: TextStyle(color: Colors.black,fontSize: 20),)),

            SizedBox(height: 15,),

            Text("Username",textAlign: TextAlign.left,style: TextStyle(fontSize: 20,color: Colors.black,fontWeight: FontWeight.bold),),
            TextField(
              style: TextStyle(color: Colors.black),
              decoration: InputDecoration(
                enabledBorder:
                OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.black),
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                ),
                hintText: 'Username',
              ),
            ),
            SizedBox(height: 20,),
            Text("Email",textAlign: TextAlign.left,style: TextStyle(fontSize: 20,color: Colors.black,fontWeight: FontWeight.bold),),
            TextField(
              style: TextStyle(color: Colors.black),
              decoration: InputDecoration(
                enabledBorder:
                OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.black),
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                ),
                hintText: 'Email',
              ),
            ),

            SizedBox(height: 20,),
            Text("Password",textAlign: TextAlign.left,style: TextStyle(fontSize: 20,color: Colors.black,fontWeight: FontWeight.bold),),
            TextField(
              style: TextStyle(color: Colors.black),
              decoration: InputDecoration(
                enabledBorder:
                OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.black),
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                ),
                hintText: 'Password',
              ),
            ),
            SizedBox(height: 20,),
            Text("Confirm Password",textAlign: TextAlign.left,style: TextStyle(fontSize: 20,color: Colors.black,fontWeight: FontWeight.bold),),
            TextField(
              style: TextStyle(color: Colors.black),
              decoration: InputDecoration(
                enabledBorder:
                OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.black),
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                ),
                hintText: 'Confirm Password',
              ),
            ),

            SizedBox(height: 30,),
            Center(
              child: TextButton(
                style: TextButton.styleFrom(
                    fixedSize: Size(200, 50),
                    backgroundColor: Colors.blue,
                    textStyle: const TextStyle(fontSize: 20)),
                onPressed: () {

                },
                child: const Text('Sign Up', style: TextStyle(color: Colors.white)),
              ),

            ),
            SizedBox(height: 40,),
            Center(child: TextButton(onPressed: (){Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const Third()),);}, child: Text('Already have an account? Login',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black),)))
          ],
        ),
      ),
    );
  }
}
