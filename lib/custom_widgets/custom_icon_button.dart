import 'package:flutter/material.dart';
import 'package:quiz_game/custom_widgets/custom_text.dart';

class CustomIconButton extends StatelessWidget {
  const CustomIconButton({
    super.key,
    required this.onPressed,
    required this.icon,
    required this.label,
  });

  final void Function() onPressed;
  final Icon icon;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: ElevatedButton.icon(
        style: ElevatedButton.styleFrom(
          backgroundColor: const Color(0xff91c7b1),
          padding: const EdgeInsets.symmetric(
            vertical: 12.0,
            horizontal: 20.00,
          ),
        ),
        onPressed: onPressed,
        icon: icon,
        label: CustomText(label),
      ),
    );
  }
}
