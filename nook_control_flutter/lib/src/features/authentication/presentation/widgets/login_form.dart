import 'dart:convert';
import 'dart:typed_data';

import 'package:crypto/crypto.dart';
import 'package:flutter/material.dart';
import 'package:nook_control_client/nook_control_client.dart';
import 'package:nook_control_flutter/main.dart';

class LoginForm extends StatefulWidget {
  const LoginForm({super.key});

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  late TextEditingController _usernameController;
  late TextEditingController _passwordController;

  @override
  void initState() {
    super.initState();
    _usernameController = TextEditingController();
    _passwordController = TextEditingController();
  }

  String _encrypt256(String textPassword) {
    final Uint8List bytes = utf8.encode(textPassword);
    final Digest encryptedPassword = sha256.convert(bytes);
    return encryptedPassword.toString();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
            colors: [
              Colors.black87,
              Colors.greenAccent,
              Colors.black,
            ],
          ),
        ),
        child: Center(
          child: SizedBox(
            width: 500,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'Username',
                ),
                TextFormField(
                  controller: _usernameController,
                ),
                SizedBox(
                  height: 20,
                ),
                const Text(
                  'Password',
                ),
                TextFormField(
                  controller: _passwordController,
                ),
                SizedBox(
                  height: 20,
                ),
                ElevatedButton(
                  onPressed: () async {
                    try {
                      final AuthResponse authResponse = await serverpodClient.userEndpoit.login(
                        User(
                          username: _usernameController.text,
                          password: _encrypt256(_passwordController.text),
                        ),
                      );
                      await serverpodClient.authenticationKeyManager?.put(authResponse.token!);
                      // mainRouter.refresh();
                    } on AuthException catch (e) {
                      print('Error on auth ');
                    }
                  },
                  child: const Text('Login'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
