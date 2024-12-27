import 'package:flutter/material.dart';

import './add_wifi_page.dart';
import './records_wifi_page.dart';
import './login_page.dart';
import './web_api.dart';

class HomePage extends StatelessWidget {
  final String username;
  final String password;
  HomePage({required this.username, required this.password});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Empty Screen'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => AddWifiPage(username: username, password: password),
                  ),
                );
              },
              child: const Text('Go to Add Record Page'),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () async {
                final data = await viewRecords(username, password);
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => ViewRecordsPage(data: data),
                  ),
                );
              },
              child: const Text('Go to View Records Page'),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () async {
                final bool res = await removeRecords(username, password);
                if (res) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text('Records removed successfully')),
                  );
                }
                else {
                  Navigator.of(context).popUntil((route) => route.isFirst);
                }
              },
              child: const Text('Clear My Records'),
            ),
          ],
        ),
      ),
    );
  }
}
