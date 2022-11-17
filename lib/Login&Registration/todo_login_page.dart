import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LoginEmailSection extends StatefulWidget {
  final String title = 'Registration';

  @override
  State<StatefulWidget> createState() => LoginEmailSectionState();
}

class LoginEmailSectionState extends State<LoginEmailSection> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  bool _success = false;
  String _userEmail = '';
  String _userpassword = '';

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Material(
        child: Scaffold(
          appBar: AppBar(
            title: const Text('Login'),
          ),
          body: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Center(
              child: Column(
                children: [
                  TextField(
                    onChanged: (value) => setState(() => _userEmail = value),
                    controller: _emailController,
                    decoration: InputDecoration(
                        suffixIcon: IconButton(
                          onPressed: _emailController.clear,
                          icon: Icon(Icons.close),
                        ),
                        border: OutlineInputBorder(),
                        labelText: 'Enter Email',
                        hintText: 'mail@example.com'),
                  ),
                  Padding(
                    padding: EdgeInsets.only(bottom: 7),
                  ),
                  TextField(
                    onChanged: (value) => setState(() => _userpassword = value),
                    controller: _passwordController,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Enter Password',
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(8.0),
                  ),
                  MaterialButton(
                    color: Colors.blue,
                    onPressed: () {},
                    child: Text('Login'),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
    //TODO UI content here
  }
}
