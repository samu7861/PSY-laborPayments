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
      appBar: CustomAppBar(userName: "Samuel", onSettingsTap: (){}, onProfileTap: (){}),
      // body: ,
    );
  }
}
