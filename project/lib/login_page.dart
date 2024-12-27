import 'package:flutter/material.dart';

import './home_page.dart';
import './web_api.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  String username = "";
  String password = "";
  bool wrong = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Login')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: _usernameController,
              decoration: const InputDecoration(labelText: 'Username'),
            ),
            TextField(
              controller: _passwordController,
              obscureText: true,
              decoration: const InputDecoration(labelText: 'Password'),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () async {
                final username = _usernameController.text;
                final password = _passwordController.text;
                final res = await login(username, password);

                if (res) {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                        builder: (_) => HomePage(username: username, password: password)
                    ),
                  );
                } else {
                  wrong = true;
                }
              },
              child: const Text('Login'),
            ),
            const SizedBox(height: 20),
            if (wrong)
              const Text('Wrong login or password'),
          ],
        ),
      ),
    );
  }
}