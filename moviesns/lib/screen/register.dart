import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:moviesns/repo/user_repo.dart';

class register extends StatefulWidget {
  const register({super.key});

  @override
  State<register> createState() => _RegisterState();
}

class _RegisterState extends State<register> {
  final _formKey = GlobalKey<FormState>();
  final _nameController = TextEditingController();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final userRepo = UserRepo();

  //가입하기 버튼 눌렀을 때의 동작
  void _submitButton() async {
    if (_formKey.currentState!.validate()) {
      String name = _nameController.text;
      String email = _emailController.text;
      String password = _passwordController.text;

      print("가입 동작!! mail : $email / pw : $password / 이름 : $name");

      await userRepo.register(name, email, password);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Flix SNS"),
        /*theme: ThemeData(
          brightness: Brightness.dark,
          primaryColor: Colors.black,
          accentColor: Colors.white,
        )*/
      ),
      body: Center(
        child: Form(
          key : _formKey,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Text("회원가입"),
              SizedBox(height: 20),
              new TextFormField(
                decoration: InputDecoration(labelText: '이름'),
                validator: (String? value) {
                if (value == null || value!.trim().isEmpty) {
                  return "이름을 입력해야 합니다.";
                }
                return null;
                },
              ),
              new TextFormField(
                decoration: InputDecoration(labelText: 'E-Mail'),
                validator: (String? value) {
                if (value == null || value!.trim().isEmpty) {
                  return "E-Mail을 입력해야 합니다.";
                }
                return null;
              },
            ),
              new TextFormField(
                 decoration: InputDecoration(labelText: '비밀번호'),
                 validator: (String? value) {
                  if (value == null || value!.trim().isEmpty) {
                    return "비밀번호를 입력해야 합니다.";
                  }
                  return null;
                },
              ),
              ElevatedButton(
                child : new Text("회원가입", style : TextStyle(fontSize:20)),
                onPressed: () {
              },
              ),
              ElevatedButton(
                child : new Text("취소", style : TextStyle(fontSize:20)),
                onPressed: () {
                  Navigator.pop(context);
                }
              ),
            ],
          ),
        ),
      ),
    );
  }
}
