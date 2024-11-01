import 'package:cleanarchitecture/core/theme/app_pallete.dart';
import 'package:flutter/material.dart';

class AuthGradientButton extends StatelessWidget {
  final String text;
  const AuthGradientButton({super.key,required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(7),
          gradient: const LinearGradient(colors: [
        AppPallete.gradient1,
        AppPallete.gradient2,
      ], begin: Alignment.bottomLeft, end: Alignment.topRight)),
      child: ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
            backgroundColor: AppPallete.transparentColor,
            shadowColor: AppPallete.transparentColor,
            fixedSize: const Size(395, 55)),
        child:Text(
          text,
          style: TextStyle(fontWeight: FontWeight.w600, fontSize: 17),
        ),
      ),
    );
  }
}
