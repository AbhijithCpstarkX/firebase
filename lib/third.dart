import 'package:firebase/first.dart';
import 'package:flutter/material.dart';
class Third extends StatefulWidget {
  const Third({Key? key}) : super(key: key);

  @override
  State<Third> createState() => _ThirdState();
}

class _ThirdState extends State<Third> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(crossAxisAlignment: CrossAxisAlignment.start,

        children: [
          Center(child: Text('Login',style: TextStyle(color: Colors.black,fontSize: 50,fontWeight: FontWeight.bold),)),
          SizedBox(height: 15,),
          Center(child: Text("Login to your account",style: TextStyle(color: Colors.black54,fontSize: 20),)),
          SizedBox(height: 30,),


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
          Center(
            child: TextButton(
              style: TextButton.styleFrom(
                  fixedSize: Size(200, 50),
                  backgroundColor: Colors.blue,
                  textStyle: const TextStyle(fontSize: 20)),
              onPressed: () {

              },
              child: const Text('Login', style: TextStyle(color: Colors.white)),
            ),
          ),
          Center(child: TextButton(onPressed: (){Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const First()),);}, child: Text('Dont have an account? Sign up',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black),))),


          Center(child: CircleAvatar(backgroundImage: NetworkImage('https://png.pngtree.com/png-vector/20220908/ourmid/pngtree-business-man-holding-key-to-unlock-phone-png-image_6141936.png'),radius: 150,))
        ],
      ),
    );
  }
}
