import 'package:flutter/material.dart';

class BottomPart extends StatelessWidget {
  const BottomPart({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            width: 200,
            child: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                primary: Colors.green,
                shape: const StadiumBorder(),
                elevation: 15,
              ),
              child: const Text('Login'),
            ),
          ),
          const SizedBox(height: 10),
          SizedBox(
            width: 200,
            child: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                primary: Colors.white,
                shape: const StadiumBorder(),
                elevation: 10,
              ),
              child: const Text(
                'Register',
                style: TextStyle(color: Colors.black54),
              ),
            ),
          ),
          const SizedBox(height: 100),
        ],
      ),
    );
  }
}
