import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'Rubik',
      ),
      home: const SettingsPage(),
    );
  }
}

class SettingsPage extends StatelessWidget {
  const SettingsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: const Text(
          'Settings',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 24,
            color: Colors.black,
          ),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: const [
            SectionTitle(title: 'Account Settings'),
            SettingsItem(title: 'Edit profile'),
            SettingsItem(title: 'Change password'),
            SettingsItem(title: 'Change username'),
            Divider(height: 40, thickness: 1),
            SectionTitle(title: 'More'),
            SettingsItem(title: 'Push Notifications'),
            SettingsItem(title: 'About us'),
            SettingsItem(title: 'Privacy Policy'),
          ],
        ),
      ),
    );
  }
}

class SectionTitle extends StatelessWidget {
  final String title;

  const SectionTitle({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8.0),
      child: Text(
        title,
        style: const TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 18,
          height: 1.33,
          color: Colors.black54,
        ),
      ),
    );
  }
}

class SettingsItem extends StatelessWidget {
  final String title;

  const SettingsItem({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: EdgeInsets.zero,
      title: Text(
        title,
        style: const TextStyle(
          fontSize: 18,
          height: 1.33,
        ),
      ),
      trailing: const Icon(Icons.chevron_right),
      onTap: () {
        // Add navigation or functionality here
      },
    );
  }
}
