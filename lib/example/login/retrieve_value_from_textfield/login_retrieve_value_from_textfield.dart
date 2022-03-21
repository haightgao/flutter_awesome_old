import 'package:flutter/material.dart';

class LoginRetrieveValueFromTextField extends StatefulWidget {
  const LoginRetrieveValueFromTextField({Key? key}) : super(key: key);

  @override
  State<LoginRetrieveValueFromTextField> createState() => _LoginRetrieveValueFromTextFieldState();
}

class _LoginRetrieveValueFromTextFieldState extends State<LoginRetrieveValueFromTextField> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Login Screen"),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const CircleAvatar(
                  radius: 100,
                  backgroundImage: NetworkImage(
                      "https://gimg2.baidu.com/image_search/src=http%3A%2F%2Fup.enterdesk.com%2Fedpic%2Ffd%2Ff1%2Fda%2Ffdf1dacb8ff0b8f13ed29bcbee42f328.jpeg&refer=http%3A%2F%2Fup.enterdesk.com&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=auto?sec=1650458351&t=baf23abb6f6cb92026c46e008f39bf5f"),
                ),
                const SizedBox(height: 20),
                const Text('Welcome to my App!'),
                const SizedBox(height: 20),
                TextField(
                  controller: _emailController,
                  keyboardType: TextInputType.emailAddress,
                  decoration: const InputDecoration(
                    prefixIcon: Icon(Icons.email),
                    border: OutlineInputBorder(),
                    hintText: 'Email',
                  ),
                ),
                const SizedBox(height: 20),
                TextField(
                  controller: _passwordController,
                  obscureText: true,
                  decoration: const InputDecoration(
                    prefixIcon: Icon(Icons.lock),
                    border: OutlineInputBorder(),
                    hintText: 'Password',
                  ),
                ),
                const SizedBox(height: 20),
                Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        final _email = _emailController.text.trim();
                        final _password = _passwordController.text.trim();

                        print('$_email');
                        print('$_password');
                      },
                      child: const Text('Login'),
                    ),
                    const SizedBox(width: 20),
                    OutlinedButton(
                      onPressed: () {},
                      child: const Text('Signup'),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
