import 'package:flutter/material.dart';

class AccountScreen extends StatelessWidget {
  const AccountScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text('Your Account'),
        backgroundColor: Colors.blueAccent,
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          Card(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
            elevation: 4,
            child: ListTile(
              leading: const CircleAvatar(
                backgroundImage: AssetImage('assets/images/user.jpg'),
                radius: 30,
              ),
              title: const Text(
                'Sholechan',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              subtitle: const Text('sholechan@gmail.com'),
              trailing: const Icon(Icons.edit, color: Colors.grey),
              onTap: () {
                // Edit profile
              },
            ),
          ),
          const SizedBox(height: 16),
          ListTile(
            leading: const Icon(Icons.settings, color: Colors.blueAccent),
            title: const Text('Account Settings'),
            trailing: const Icon(Icons.arrow_forward_ios, color: Colors.grey),
            onTap: () {
              // Navigate to account settings
            },
          ),
          ListTile(
            leading: const Icon(Icons.payment, color: Colors.blueAccent),
            title: const Text('Payment Methods'),
            trailing: const Icon(Icons.arrow_forward_ios, color: Colors.grey),
            onTap: () {
              // Navigate to payment methods
            },
          ),
          ListTile(
            leading: const Icon(Icons.help, color: Colors.blueAccent),
            title: const Text('Help & Support'),
            trailing: const Icon(Icons.arrow_forward_ios, color: Colors.grey),
            onTap: () {
              // Navigate to help & support
            },
          ),
        ],
      ),
    );
  }
}
