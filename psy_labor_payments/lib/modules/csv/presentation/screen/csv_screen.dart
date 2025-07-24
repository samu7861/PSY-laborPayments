import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:psy_labor_payments/shared/widgets/custom_appbar.dart';

@RoutePage()
class CsvScreen extends StatelessWidget {
  const CsvScreen({super.key});

  static const String name = 'csv';
  static const String path = '/csv';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
            backgroundColor: Theme.of(context).colorScheme.surface,

      appBar: CustomAppBar(
          userName: "Samuel", onSettingsTap: () {}, onProfileTap: () {}),
          // body: ,
    );
  }
}
