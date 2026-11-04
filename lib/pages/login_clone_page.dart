import 'package:flutter/material.dart';
import 'package:belajarfluuter/component/instagram_text_field.dart';
import 'package:belajarfluuter/component/instagram_button.dart';
import 'package:get/get.dart';
import 'package:belajarfluuter/controller/login_clone_conttroller.dart';


class LoginCloneFix extends StatelessWidget {
   LoginCloneFix({super.key});
  final controller = Get.put(LoginCloneController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(title: Text("Login API")),
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
                TextField(
                  controller: controller.txtUsername,
                  decoration: InputDecoration(
                    hintText: 'Mobile number, username or email',
                    hintStyle: TextStyle(color: Colors.white54),
                    filled: true,
                    fillColor: Color(0xFF292A2D),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                      borderSide: BorderSide.none,
                    ),
                  ),
                  style: TextStyle(color: Colors.white),
                ),
                

                const SizedBox(height: 15),

                TextField(
                  controller: controller.txtPassword,
                  obscureText: true,
                  decoration: InputDecoration(
                    hintText: 'Password',
                    hintStyle: TextStyle(color: Colors.white54),
                    filled: true,
                    fillColor: Color(0xFF292A2D),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                      borderSide: BorderSide.none,
                    ),
                  ),
                  style: TextStyle(color: Colors.white),
                ),

              

                const SizedBox(height: 30),

             Obx(
              () => controller.isLoading.value 
              ? Center(child: CircularProgressIndicator()) : InstagramButton(
              text: 'Log in',
              onPressed: () {
              controller.login();
             },
            ),),
            
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