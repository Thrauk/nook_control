import 'dart:convert';
import 'dart:typed_data';

import 'package:crypto/crypto.dart';
import 'package:flutter/material.dart';
import 'package:nook_control_client/nook_control_client.dart';
import 'package:nook_control_flutter/main.dart';
import 'package:nook_control_flutter/src/core/styles/colors.dart';
import 'package:nook_control_flutter/src/core/styles/text_styles.dart';
import 'package:nook_control_flutter/src/core/widgets/at_text_field.dart';

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
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/background/auth_background.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Text(
              //   'N00KA Control\nServer',
              //   textAlign: TextAlign.center,
              //   style: ATTextStyles.h1(),
              // ),
              const SizedBox(
                height: 10,
              ),
              Container(
                width: 350,
                height: 500,
                decoration: BoxDecoration(
                  color: ATColors.darkGrey.withOpacity(0.9),
                  borderRadius: const BorderRadius.all(
                    Radius.circular(
                      8.0,
                    ),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Spacer(),
                      Text(
                        'Account Login',
                        style: ATTextStyles.h2(color: ATColors.orange),
                      ),
                      const Spacer(),
                      ATTextField(
                        controller: _usernameController,
                        label: 'Username',
                        labelUnfocusedColor: ATColors.orange,
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      ATTextField(
                        controller: _passwordController,
                        label: 'Password',
                        labelUnfocusedColor: ATColors.orange,
                      ),
                      const Spacer(),
                      SizedBox(
                        width: double.infinity,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: ATColors.orange,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                          ),
                          onPressed: () async {
                            try {
                              final AuthResponse authResponse = await serverpodClient.userEndpoit.login(
                                User(
                                  username: _usernameController.text,
                                  password: _encrypt256(_passwordController.text),
                                ),
                              );
                              await serverpodClient.authenticationKeyManager?.put(authResponse.token!);
                            } on AuthException catch (e) {
                              print('Error on auth ');
                            }
                          },
                          child: Text(
                            'Login',
                            style: ATTextStyles.body(
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                      Spacer(),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
