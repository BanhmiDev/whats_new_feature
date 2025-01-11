import 'package:flutter/material.dart';
import 'package:whats_new_feature/src/widgets/stadium_button.dart';

///
class ContinueButton extends StatelessWidget {
  ///
  const ContinueButton({
    Key? key,
    required this.onTap,
    this.accentColor,
    this.buttonTextColor,
    required this.buttonText
  }) : super(key: key);

  ///
  final VoidCallback onTap;

  ///
  final Color? accentColor;

  final Color? buttonTextColor;
  final String buttonText;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      padding: const EdgeInsets.only(
        top: 20,
        bottom: 40,
      ),
      child: Center(
        child: StadiumButton(
          color: accentColor ?? Theme.of(context).colorScheme.secondary,
          onTap: onTap,
          child: const Text(
            buttonText ?? 'CONTINUE',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: buttonTextColor ?? Colors.black,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
