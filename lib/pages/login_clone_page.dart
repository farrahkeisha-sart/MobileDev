import 'package:flutter/material.dart';
import 'package:belajarfluuter/component/instagram_text_field.dart';
import 'package:belajarfluuter/component/instagram_button.dart';

class LoginCloneFix extends StatelessWidget {
  const LoginCloneFix({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF1C1C1E),
      body: Center(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 60),
          child: ConstrainedBox(
            constraints: const BoxConstraints(
              maxWidth: 680,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,//menyusun widget secara vertikal
              children: [
                // Judul
                const Text(
                  'Log into Instagram',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 21,
                    fontWeight: FontWeight.bold,
                  ),
                ),

                const SizedBox(height: 32),

                // Username
                const InstagramTextField(
                  hintText: 'Mobile number, username or email',
                ),

                const SizedBox(height: 15),

                // Password
                const InstagramTextField(
                  hintText: 'Password',
                  obscureText: true,
                ),

                const SizedBox(height: 30),

                // Tombol Login
                InstagramButton(
                  text: 'Log in',
                  onPressed: () {},
                ),

                const SizedBox(height: 30),

                // Forgot password
                const Center(
                  child: Text(
                    'Forgot password?',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),

                const SizedBox(height: 80),

                // Login Facebook
                SizedBox(
                  height: 55,
                  child: ElevatedButton.icon(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.facebook,
                      color: Color.fromARGB(255, 86, 54, 10),
                      size: 22,
                    ),
                    label: const Text(
                      'Log in with Facebook',
                      style: TextStyle(
                        color: Color(0xFFB7C8DF),
                        fontSize: 18,
                      ),
                    ),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFF292A2D),
                      elevation: 0,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                    ),
                  ),
                ),

                const SizedBox(height: 16),

                // Create account
                InstagramButton(
                  text: 'Create new account',
                  isOutline: true,
                  onPressed: () {},
                ),

                const SizedBox(height: 30),

                // Meta
                const Center(
                  child: Text(
                    '∞ Meta',
                    style: TextStyle(
                      color: Color(0xFFD8D8D8),
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}