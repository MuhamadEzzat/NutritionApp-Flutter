import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: SafeArea(
       child: Padding(
         padding: const EdgeInsets.all(8.0),
         child: Column(
           crossAxisAlignment: CrossAxisAlignment.center,
           mainAxisAlignment: MainAxisAlignment.spaceBetween,
           children: [
             AspectRatio(
               aspectRatio: 10,
               child: Row(
                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Container(
                      width: 80,
                      height: 40,
                      decoration: const BoxDecoration(
                          shape: BoxShape.rectangle,
                          color: Colors.redAccent
                      ),
                    ),
                    Container(
                      width: 80,
                      height: 40,
                      decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.redAccent
                      ),
                    ),
                  ],
                ),
             ),
             Padding(
               padding: const EdgeInsets.fromLTRB(36.0, 50, 36.0, 0),
               child: Column(
                 children: const [
                   TextField(
                     maxLength: 20,

                     decoration: InputDecoration(
                       prefixIcon: Icon(Icons.people),
                       border: UnderlineInputBorder(),
                       labelText: 'UserName',
                     ),
                   ),
                 ],
               ),
             ),
             Padding(
               padding: const EdgeInsets.fromLTRB(36.0, 0, 36.0, 8.0),
               child: TextFormField(

                 maxLength: 10,
                 decoration: const InputDecoration(
                   prefixIcon: Icon(Icons.password),
                   border: UnderlineInputBorder(),
                   labelText: 'Password',
                 ),
                 obscureText: true,
               ),
             ),
             ElevatedButton(
                 onPressed: (() {
                   Navigator.pushNamed(context, '/food');
                 }),
               style: ElevatedButton.styleFrom(
                 shape: RoundedRectangleBorder(
                   borderRadius: BorderRadius.circular(20),
                   ),
               ),
                 child: const Text(
                   'Submit',
                 ),
             ),
             const Align(
               alignment: Alignment.bottomCenter,
               child: Image(
                 width: 100,
                 height: 50,
                 image: AssetImage('assets/food.jpg'),
               ),

             ),
             // Stack(
             //   children: <Widget>[
             //     Positioned(
             //       bottom: 8,
             //       child: Container(
             //         height: 50,
             //         width: 100,
             //         child: Image(
             //         width: 100,
             //         height: 50,
             //         image: AssetImage('assets/food.jpg'),
             //     ),
             //       ),
             //     )
             //   ],
             // ),
           ],
         ),
       ),

      ),

    );
  }
}
