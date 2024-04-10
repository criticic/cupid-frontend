import 'dart:ui';

import 'package:cupid/components/styled_button.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:firebase_auth/firebase_auth.dart';

Future<UserCredential> signInWithGoogle() async {
  // Trigger the authentication flow
  final GoogleSignInAccount? googleUser = await GoogleSignIn(
    clientId:
        "764881220448-4eaejem2p3dm0kssbti8jck9k8etihi3.apps.googleusercontent.com",
  ).signIn();

  // Obtain the auth details from the request
  final GoogleSignInAuthentication? googleAuth =
      await googleUser?.authentication;

  // Create a new credential
  final credential = GoogleAuthProvider.credential(
    accessToken: googleAuth?.accessToken,
    idToken: googleAuth?.idToken,
  );

  // Once signed in, return the UserCredential
  return await FirebaseAuth.instance.signInWithCredential(credential);
}

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
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Image(
                  image: AssetImage('assets/logos/cupid-logo.png'),
                  width: 512,
                ),
                const SizedBox(width: 8),
                const Text(
                  'Cupid',
                  style: TextStyle(
                    fontSize: 72,
                    fontVariations: [FontVariation.weight(900)],
                    color: Color(0xffe94057),
                  ),
                ),
                const Spacer(),
                Column(
                  children: [
                    StyledButton(
                      text: "Sign in with Google",
                      icon: const FaIcon(
                        FontAwesomeIcons.google,
                        color: Colors.white,
                      ),
                      onTap: () async {
                        await signInWithGoogle();
                      },
                    ),
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
