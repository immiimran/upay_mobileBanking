import 'package:flutter/material.dart';

class CustomHomeActionButton extends StatelessWidget {
  final String icon;
  final String label;
  const CustomHomeActionButton({
    super.key,
    required this.icon,
    required this.label,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Image.asset(icon, width: 50, height: 50),
        Text(
          label,
          style: TextStyle(fontSize: 12, fontWeight: FontWeight.w500),
        ),
      ],
    );
  }
}
