import 'package:flutter/material.dart';

class ViewRecordsPage extends StatelessWidget {
  final Map<String, String> data;

  ViewRecordsPage({required this.data});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('View Records'),
      ),
      body: ListView(
        children: data.entries.map((entry) {
          return ListTile(
            title: Text('${entry.key}: ${entry.value}'),  // Отображаем ключ и значение
          );
        }).toList(),
      ),
    );
  }
}