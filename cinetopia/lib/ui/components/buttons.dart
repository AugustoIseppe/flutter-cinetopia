import 'package:flutter/material.dart';

class PrimaryButton extends StatelessWidget {

  final String text;
  final IconData? icon;
  final Function onTap;

  const PrimaryButton({super.key, required this.text, this.icon, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        onTap();
      },
      child: Ink(
        padding: const EdgeInsets.symmetric(horizontal: 26, vertical: 19),
        decoration: BoxDecoration(
          color: Color(0xFFB370FF),
          borderRadius: BorderRadius.circular(50),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            icon != null ? Icon(icon, size: 24, color: Color(0xFF1D0E44)) : Container(),
            const SizedBox(width: 8),
            Text(
              text,
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Color(0xFF1D0E44)),
            ),
          ],
        ),
      ),
    );
  }
}
