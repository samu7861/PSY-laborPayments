import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:psy_labor_payments/shared/widgets/custom_appbar.dart';

@RoutePage()
class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  static const String name = 'dashboard';
  static const String path = '/dashboard';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surface,
      appBar: CustomAppBar(
          userName: "Samuel", onSettingsTap: () {}, onProfileTap: () {}),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Center(
          child: Wrap(
            spacing: MediaQuery.of(context).size.width * 0.07,
            runSpacing: MediaQuery.of(context).size.height * 0.07,
            clipBehavior: Clip.hardEdge,
            alignment: WrapAlignment.center,
            children: [
              _DashboardTile(
                title: "Resultados",
                icon: Image.asset(
                  'assets/pie-chart.png',
                  width: MediaQuery.of(context).size.width * 0.2,
                  height: MediaQuery.of(context).size.height * 0.2,
                ),
                onTap: () {
                  // Navigate to results screen
                },
              ),
              _DashboardTile(
                title: "Procesamiento CSV",
                icon: Image.asset(
                  'assets/file-plus.png',
                  width: MediaQuery.of(context).size.width * 0.2,
                  height: MediaQuery.of(context).size.height * 0.2,
                ),
                onTap: () {
                  // Navigate to results screen
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _DashboardTile extends StatelessWidget {
  final String title;
  final Image icon;
  final VoidCallback? onTap;

  const _DashboardTile({
    required this.title,
    required this.icon,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final onSurface = theme.colorScheme.onSurface;
    final onPrimaryContainer = theme.colorScheme.onPrimaryContainer;

    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(MediaQuery.of(context).size.width * 0.02),
      child: SizedBox(
        width: MediaQuery.of(context).size.width * 0.25,
        height: MediaQuery.of(context).size.height * 0.5,
        child: Material(
          color: onPrimaryContainer,
          borderRadius: BorderRadius.circular(MediaQuery.of(context).size.width * 0.02),
          elevation: 2,
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 20),
            child: Column(
              children: [
                Text(
                  title,
                  style: theme.textTheme.titleLarge?.copyWith(
                    color: onSurface,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: MediaQuery.of(context).size.height * 0.12),
                icon,
              ],
            ),
          ),
        ),
      ),
    );
  }
}
