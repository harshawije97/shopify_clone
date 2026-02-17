import 'package:flutter/material.dart';
import 'package:shopify_clone/features/auth/views/widgets/auth_button.dart';
import 'package:shopify_clone/features/auth/views/widgets/text_field_input.dart';
import 'package:shopify_clone/resources/themes/app_color_pallete.dart';

class SigninPage extends StatefulWidget {
  const SigninPage({super.key});
  @override
  State<SigninPage> createState() => _SigninPageState();
}

class _SigninPageState extends State<SigninPage> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final formKey = GlobalKey<FormState>();

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    // Form validation
    formKey.currentState?.validate();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Form(
          key: formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                "Sign In",
                style: TextStyle(fontSize: 42, fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 28),
              TextFieldInput(placeholder: "Email", controller: emailController),
              const SizedBox(height: 16),
              TextFieldInput(
                placeholder: "Password",
                controller: passwordController,
                isPassword: true,
              ),
              const SizedBox(height: 16),
              AuthButton(title: "Continue", onCallback: () {}),
              const SizedBox(height: 20),
              RichText(
                text: TextSpan(
                  text: "Don't have an account? ",
                  style: Theme.of(context).textTheme.titleMedium,
                  children: [
                    TextSpan(
                      text: "Sign Up",
                      style: TextStyle(color: Pallete.gradient1),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
