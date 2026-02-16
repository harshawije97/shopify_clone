import 'package:flutter/material.dart';
import 'package:shopify_clone/features/auth/views/widgets/auth_button.dart';
import 'package:shopify_clone/features/auth/views/widgets/text_field_input.dart';
import 'package:shopify_clone/resources/themes/app_color_pallete.dart';

class SignupPage extends StatefulWidget {
  const SignupPage({super.key});

  @override
  State<SignupPage> createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              "Sign Up",
              style: TextStyle(fontSize: 42, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 28),
            TextFieldInput(placeholder: "Full Name"),
            const SizedBox(height: 16),
            TextFieldInput(placeholder: "Email"),
            const SizedBox(height: 16),
            TextFieldInput(placeholder: "Password"),
            const SizedBox(height: 16),
            AuthButton(),
            const SizedBox(height: 20),
            RichText(
              text: TextSpan(
                text: "Already have an account? ",
                style: Theme.of(context).textTheme.titleMedium,
                children: [
                  TextSpan(
                    text: "Sign In",
                    style: TextStyle(color: Pallete.gradient1),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
