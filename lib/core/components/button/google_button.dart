import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../gen/fonts.gen.dart';

class GoogleButton extends StatelessWidget {
  const GoogleButton({super.key, required this.onTap});

  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    var assetName = 'assets/images/svg/ic_google.svg';
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(color: Colors.white.withOpacity(.2), borderRadius: BorderRadius.circular(8)),
        height: 48,
        width: double.infinity,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset(assetName),
            const SizedBox(
              width: 8,
            ),
            Text(
              'Sign in with Google',
              style: Theme.of(context).textTheme.headline6?.copyWith(
                  fontWeight: FontWeight.w400, fontSize: 15, color: Colors.white, fontFamily: FontFamily.inter),
            ),
          ],
        ),
      ),
    );
  }
}
