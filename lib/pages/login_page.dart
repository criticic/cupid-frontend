import 'dart:ui';

import 'package:cupid/components/styled_button.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SizedBox.expand(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 40),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image(
                      image: AssetImage('assets/logos/cupid-logo.png'),
                      width: 64,
                    ),
                    SizedBox(width: 8),
                    Text(
                      'Cupid',
                      style: TextStyle(
                        fontSize: 48,
                        fontVariations: [FontVariation.weight(900)],
                        color: Color(0xffe94057),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 24),
                const Text(
                  'Welcome to Cupid',
                  style: TextStyle(
                    fontSize: 36,
                    fontVariations: [FontVariation.weight(900)],
                    color: Color(0xffe94057),
                  ),
                ),
                const Spacer(),
                Column(
                  children: [
                    StyledButton(
                        text: "Sign in with Google",
                        onTap: () {},
                        icon: const FaIcon(
                          FontAwesomeIcons.google,
                          color: Colors.white,
                        )),
                    const SizedBox(height: 24),
                  ],
                ),
                const SizedBox(height: 24),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
