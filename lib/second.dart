import 'package:firebase/first.dart';
import 'package:firebase/third.dart';
import 'package:flutter/material.dart';
class Second extends StatefulWidget {
  const Second({Key? key}) : super(key: key);

  @override
  State<Second> createState() => _SecondState();
}

class _SecondState extends State<Second> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body:Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(child: Text('Welcome',style: TextStyle(color: Colors.black,fontSize: 50,fontWeight: FontWeight.bold),)),

            SizedBox(height: 15,),

            Center(child: Text("Slash Flutter provides extraordinary flutter tutorials.Do Subscribe!",style: TextStyle(color: Colors.black54,fontSize: 20),)),

            SizedBox(height: 30,),

          Center(child: CircleAvatar(backgroundImage: NetworkImage('https://media.istockphoto.com/id/687884534/vector/phone-call-button-on-smartphone-screen.jpg?s=612x612&w=0&k=20&c=sgCXODLKY0rGQEKO3aEv74XK2mUE47j1Mhd3SnTFt0s='),radius: 100,)),
            SizedBox(height: 50,),
            Center(
              child: TextButton(
                style: TextButton.styleFrom(
                    fixedSize: Size(200, 50),
                    backgroundColor: Colors.blue,
                    textStyle: const TextStyle(fontSize: 20)),
                onPressed: () {Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Third()),);

                },
                child: const Text('Login', style: TextStyle(color: Colors.white)),
              ),
            ),
            SizedBox(height: 10,),
            Center(
              child: TextButton(
                style: TextButton.styleFrom(
                    fixedSize: Size(200, 50),
                    backgroundColor: Colors.blue,
                    textStyle: const TextStyle(fontSize: 20)),
                onPressed: () {Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const First()),);

                },
                child: const Text('Sign Up', style: TextStyle(color: Colors.white)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
