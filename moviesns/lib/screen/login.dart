// import 'dart:io';
// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:moviesns/screen/register.dart';

// class LoginPage extends StatefulWidget {
//   @override
//   _LoginPageState createState() => _LoginPageState();
// }

// class _LoginPageState extends State<LoginPage> {
//   final _email = TextEditingController();
//   final _password = TextEditingController();
//   final _formkey = GlobalKey<FormState>();

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("Flix SNS"),
//         /*theme: ThemeData(
//           brightness: Brightness.dark,
//           primaryColor: Colors.black,
//           accentColor: Colors.white,
//         )*/
//       ),
//       body: Center(
//         child: Form(
//           key : _formkey,
//           child: Column(
//             mainAxisSize: MainAxisSize.min,
//             crossAxisAlignment: CrossAxisAlignment.stretch,
//             children: <Widget>[
//               Text("로그인"),
//               SizedBox(height: 20),
//               new TextFormField(
//                 decoration: InputDecoration(labelText: 'E-Mail'),
//                 validator: (String? value) {
//                 if (value == null || value!.trim().isEmpty) {
//                   return "E-Mail을 입력해야 합니다.";
//                 }
//                 return null;
//               },
//             ),
//               new TextFormField(
//                  decoration: InputDecoration(labelText: '비밀번호'),
//                  validator: (String? value) {
//                   if (value == null || value!.trim().isEmpty) {
//                     return "비밀번호를 입력해야 합니다.";
//                   }
//                   return null;
//                 },
//               ),
//               ElevatedButton(
//                 child : new Text("로그인", style : TextStyle(fontSize:20)),
//                 onPressed: () {}
//               ),
//               ElevatedButton(
//                 child : new Text("회원가입", style : TextStyle(fontSize:20)),
//                 onPressed: () {
//                   Navigator.push(
//                     context, MaterialPageRoute(builder: (_) => register()));
//                   },
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
