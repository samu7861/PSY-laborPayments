import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../../../../config/routes/app_router.dart';

@RoutePage()
class StartScreen extends StatelessWidget {
  const StartScreen({super.key});

  static const String name = 'start';
  static const String path = '/start';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surface,
      body: SizedBox.expand(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  "assets/logo.png",
                ),
                const SizedBox(height: 10),
                Text(
                  'LABOR PAYMENTS',
                  style: Theme.of(context).textTheme.headlineLarge,
                ),
                SizedBox(height: MediaQuery.of(context).size.height * 0.15),
                Text(
                  'Welcome to the Start Screen',
                  style: Theme.of(context).textTheme.bodyLarge,
                ),
                SizedBox(height: MediaQuery.of(context).size.height * 0.05),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.3,
                  child: ElevatedButton(
                    onPressed: () async {
                      await context.router.push(const DashboardRoute());
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Theme.of(context).colorScheme.primary,
                    ),
                    child: Text(
                      'Start',
                      style: TextStyle(
                        color: Theme.of(context).colorScheme.onPrimary,
                        fontSize: 16,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
