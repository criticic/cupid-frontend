import 'dart:ui';

import 'package:flutter/material.dart';

class StyledButton extends StatelessWidget {
  const StyledButton({
    super.key,
    required this.text,
    required this.onTap,
    this.icon,
  });

  final String text;
  final void Function() onTap;
  final Widget? icon;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: double.infinity,
        height: 60,
        decoration: BoxDecoration(
          color: const Color(0xffe94057),
          borderRadius: BorderRadius.circular(15),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            if (icon != null) icon!,
            Text(
              text,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 18,
                fontVariations: [FontVariation.weight(700)],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
