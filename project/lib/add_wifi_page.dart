import 'package:flutter/material.dart';
import './web_api.dart';

class AddWifiPage extends StatelessWidget {
  final String username;
  final String password;

  AddWifiPage({required this.username, required this.password}); // Принимаем username и password через конструктор

  final _wifiController = TextEditingController();
  final _wifiPassController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Add Record'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: _wifiController,
              decoration: const InputDecoration(labelText: 'Wi-Fi Name'),
            ),
            TextField(
              controller: _wifiPassController,
              obscureText: true,
              decoration: const InputDecoration(labelText: 'Wi-Fi Password'),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () async {
                final res = await addRecord(username, password, _wifiController.text, _wifiPassController.text);
                if (res) {
                  Navigator.pop(context);
                } else {
                  Navigator.of(context).popUntil((route) => route.isFirst);
                }
              },
              child: const Text('Add Record'),
            ),
          ],
        ),
      ),
    );
  }
}