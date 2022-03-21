import 'package:flutter/material.dart';

class HelloTextField extends StatelessWidget {
  const HelloTextField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('TextField'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8),
        child: Column(
          children: [
            const TextField(
              decoration: InputDecoration(
                hintText: 'Your name',
                labelText: 'Name',
                labelStyle: TextStyle(
                  fontSize: 24,
                  color: Colors.blue,
                ),
                border: InputBorder.none,
                fillColor: Colors.black12,
                filled: true,
              ),
              obscureText: false,
              maxLength: 20,
            ),
            const SizedBox(height: 16),
            const TextField(
              decoration: InputDecoration(
                hintText: 'Detailed Description',
                labelText: 'Description',
                labelStyle: TextStyle(
                  fontSize: 24,
                  color: Colors.blue,
                ),
                border: UnderlineInputBorder(),
              ),
              obscureText: false,
              maxLines: 3,
            ),
            const SizedBox(height: 16),
            const TextField(
              decoration: InputDecoration(
                hintText: 'Detailed Password',
                labelText: 'Password',
                labelStyle: TextStyle(
                  fontSize: 24,
                  color: Colors.blue,
                ),
                border: OutlineInputBorder(),
                prefixIcon: Icon(Icons.security),
              ),
              obscureText: true,
            ),
            const SizedBox(height: 16),
            const TextField(
              decoration: InputDecoration(
                hintText: 'Detailed Password',
                labelText: 'Password',
                labelStyle: TextStyle(
                  fontSize: 24,
                  color: Colors.blue,
                ),
                border: OutlineInputBorder(),
                prefix: Icon(Icons.security),
              ),
              obscureText: true,
            ),
            const SizedBox(height: 16),
            TextField(
              decoration: InputDecoration(
                hintText: 'Detailed Password',
                labelText: 'Password',
                labelStyle: const TextStyle(
                  fontSize: 24,
                  color: Colors.blue,
                ),
                border: const OutlineInputBorder(),
                suffixIcon: IconButton(
                  icon: const Icon(Icons.security),
                  onPressed: () {},
                ),
              ),
              obscureText: true,
            ),
          ],
        ),
      ),
    );
  }
}
