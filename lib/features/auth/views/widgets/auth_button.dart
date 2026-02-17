import 'package:flutter/material.dart';
import 'package:shopify_clone/resources/themes/app_color_pallete.dart';

class AuthButton extends StatelessWidget {
  final String title;
  final VoidCallback onCallback;

  const AuthButton({super.key, required this.title, required this.onCallback});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: const LinearGradient(
          colors: [Pallete.gradient1, Pallete.gradient2],
        ),
        borderRadius: BorderRadius.circular(10),
      ),
      child: ElevatedButton(
        onPressed: onCallback,
        style: ElevatedButton.styleFrom(
          fixedSize: Size(395, 55.8),
          backgroundColor: Pallete.transparentColor,
          shadowColor: Pallete.transparentColor,
        ),
        child: Text(
          title,
          style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
        ),
      ),
    );
  }
}
