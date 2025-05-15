import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:golf_yy/features/auth/views/widgets/buttons/auth_sign_out_button.dart';

@RoutePage()
class TimelineScreen extends StatelessWidget {
  const TimelineScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Column(
          children: [
            Text('Timeline'),
            AuthSignOutButton(),
          ],
        ),
      ),
    );
  }
}
