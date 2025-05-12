import 'package:flutter/material.dart';
import 'package:golf_yy/common/widgets/themed_text.dart';

class AuthAppleButton extends StatelessWidget {
  const AuthAppleButton({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.7,
      height: 44,
      child: ElevatedButton(
        onPressed: () {
          print('apple button pressed');
        },
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.black,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ),
        child: Stack(
          alignment: Alignment.center,
          children: [
            const Center(
              child: Text(
                'Appleで続ける',
                style: TextStyle(color: Colors.white),
              ),
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: SizedBox(
                width: 44,
                height: 44,
                child: Padding(
                  padding: const EdgeInsets.only(left: 4.0),
                  child: Image.asset('assets/logos/auth_apple.png'),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
