// import 'package:flutter/material.dart';
//
// class LoginPage extends StatefulWidget {
//   const LoginPage({super.key});
//
//   @override
//   State<LoginPage> createState() => _LoginPageState();
// }
//
// class _LoginPageState extends State<LoginPage> {
//   String name = "";
//
//   @override
//   Widget build(BuildContext context) {
//     return Material(
//       color: Colors.white60,
//       child: SingleChildScrollView(
//         child: Column(
//           children: [
//             Image.asset("assets/images/image.jpg", fit: BoxFit.fill),
//             SizedBox(height: 10.0),
//             Text(
//               "Welcome to my home $name",
//               style: TextStyle(
//                 fontSize: 24,
//                 fontWeight: FontWeight.bold,
//                 color: Colors.black,
//               ),
//             ),
//             Padding(
//               padding: const EdgeInsets.symmetric(
//                 vertical: 8.0,
//                 horizontal: 16.0,
//               ),
//               child: SizedBox(height: 10.0),
//             ),
//             Column(
//               mainAxisSize: MainAxisSize.min,
//               children: [
//                 TextFormField(
//                   decoration: InputDecoration(
//                     hintText: "Enter Username",
//                     labelText: "Username",
//                   ),
//                   onChanged: (value) {
//                     name = value;
//                     setState(() {});
//                   },
//                 ),
//                 SizedBox(
//                   height: 40.0,
//                 ),
//                 Container(
//                   width: 100,
//                   height: 50,
//                   color: Colors.deepPurpleAccent,
//                 ),
//                 TextFormField(
//                   obscureText: true,
//                   decoration: InputDecoration(
//                     hintText: "Enter Password",
//                     labelText: "password",
//                   ),
//
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

// import 'package:flutter/material.dart';
//
// class LoginPage extends StatefulWidget {
//   const LoginPage({super.key});
//
//   @override
//   State<LoginPage> createState() => _LoginPageState();
// }
//
// class _LoginPageState extends State<LoginPage> {
//   String name = "";
//
//   @override
//   Widget build(BuildContext context) {
//     return Material(
//       color: Colors.white60,
//       child: SingleChildScrollView(
//         child: Column(
//           children: [
//             Image.asset("assets/images/image.jpg", fit: BoxFit.fill),
//             SizedBox(height: 10.0),
//             Text(
//               "Welcome to my home $name",
//               style: TextStyle(
//                 fontSize: 24,
//                 fontWeight: FontWeight.bold,
//                 color: Colors.black,
//               ),
//             ),
//             Padding(
//               padding: const EdgeInsets.symmetric(
//                 vertical: 8.0,
//                 horizontal: 16.0,
//               ),
//               child: SizedBox(height: 10.0),
//             ),
//             Column(
//               mainAxisSize: MainAxisSize.min,
//               children: [
//                 TextFormField(
//                   decoration: InputDecoration(
//                     hintText: "Enter Username",
//                     labelText: "Username",
//                   ),
//                   onChanged: (value) {
//                     name = value;
//                     setState(() {});
//                   },
//                 ),
//                 SizedBox(height: 40.0),
//                 Container(width: 100, height: 50, color: Colors.black),
//                 TextFormField(
//                   obscureText: true,
//                   decoration: InputDecoration(
//                     hintText: "Enter Password",
//                     labelText: "Password",
//                   ),
//                 ), //
//               ],
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:flutter_basics2/utils/routes.dart';

class LoginPage extends StatefulWidget {
  LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String name = "";
  bool changeButton = false;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white60,
      child: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset("assets/images/image.jpg", fit: BoxFit.fill),
            const SizedBox(height: 10.0),
            Text(
              "Welcome to my home $name",
              style: const TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            const SizedBox(height: 20.0),

            // Username field
            TextFormField(
              decoration: const InputDecoration(
                hintText: "Enter Username",
                labelText: "Username",
              ),
              onChanged: (value) {
                setState(() {
                  name = value;
                });
              },
            ),
            const SizedBox(height: 20.0),

            // Password field
            TextFormField(
              obscureText: true,
              decoration: const InputDecoration(
                hintText: "Enter Password",
                labelText: "Password",
              ),
            ),
            const SizedBox(height: 30.0),

            InkWell(
              onTap: () async {
                setState(() {
                  changeButton = true;
                });
                await Future.delayed(Duration(seconds: 1));
                Navigator.pushNamed(context, MyRoutes.homeRoute);
              },
              child: AnimatedContainer(
                duration: Duration(seconds: 1),
                width: changeButton ? 50 : 150,
                height: 50,
                alignment: Alignment.center,

                decoration: BoxDecoration(
                  color: Colors.deepPurple,
                  //shape: changeButton ? BoxShape.circle : BoxShape.rectangle,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: changeButton
                    ? Icon(Icons.done, color: Colors.white)
                    : Text(
                        "login",

                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 22,
                        ),
                      ),
              ),
            ),

            // // Login Button
            // ElevatedButton(
            //   onPressed: () {
            //     print("Login clicked with Username: $name");
            //   },
            //   style: ElevatedButton.styleFrom(
            //     backgroundColor: Colors.deepPurpleAccent,
            //     padding: const EdgeInsets.symmetric(
            //       horizontal: 40,
            //       vertical: 15,
            //     ),
            //   ),
            //   child: const Text(
            //     "Login",
            //     style: TextStyle(fontSize: 18, color: Colors.white),
            //   ),
            // ),
          ],
        ),
      ),
    );
  }
}
