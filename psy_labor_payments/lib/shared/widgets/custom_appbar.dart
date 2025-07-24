import 'package:flutter/material.dart';

/// A reusable AppBar for PSY Paquete Completo screens.
///
/// Displays:
///  - A settings icon on the left.
///  - The branded title centered.
///  - A user button on the right that shows the user’s name and an avatar icon.
class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  /// The name of the current user to display.
  final String userName;

  /// Callback when the settings (gear) icon is tapped.
  final VoidCallback onSettingsTap;

  /// Callback when the user button is tapped.
  final VoidCallback onProfileTap;

  /// Creates a [PsyAppBar].
  const CustomAppBar({
    super.key,
    required this.userName,
    required this.onSettingsTap,
    required this.onProfileTap,
  });

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10),
      child: AppBar(
        backgroundColor: Theme.of(context).colorScheme.surface,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.settings),
          color: Theme.of(context).colorScheme.onSurface,
          onPressed: onSettingsTap,
          tooltip: 'Configuración',
        ),
        title: Image.asset(
          'assets/logo.png',
          height: MediaQuery.of(context).size.height * 0.035,
        ),
        centerTitle: true,
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12.0),
            child: Row(
              children: [
                const SizedBox(width: 8),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.1,
                  height: MediaQuery.of(context).size.height * 0.05,
                  child: Material(
                    color: Theme.of(context).colorScheme.secondary,
                    elevation: 2,
                    borderRadius: BorderRadius.circular(20),
                    child: Center(
                      child: Text(
                        userName,
                        style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                              color: Theme.of(context).colorScheme.onSurface,
                            ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.01,
                ),
                IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.person,
                    color: Theme.of(context).colorScheme.onSurface,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
