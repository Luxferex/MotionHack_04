import 'package:flutter/material.dart';

class LoginButton extends StatelessWidget {
  const LoginButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ButtonStyle(
        backgroundColor:
            MaterialStatePropertyAll(Color.fromARGB(255, 76, 110, 235)),
      ),
      onPressed: () {
        Navigator.pushNamed(context, '/home');
      },
      child: Text(
        "Login",
        style: TextStyle(
          color: Colors.white,
        ),
      ),
    );
  }
}
