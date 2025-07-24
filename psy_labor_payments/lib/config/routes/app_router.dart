import 'package:auto_route/auto_route.dart';
import 'package:psy_labor_payments/modules/csv/presentation/screen/csv_screen.dart';

import '../../modules/dashboard/presentation/screen/dashboard_screen.dart';
import '../../modules/start/presentation/screen/start_screen.dart';

part 'app_router.gr.dart';

@AutoRouterConfig()
class AppRouter extends _$AppRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(
          page: StartRoute.page,
          path: StartScreen.path,
          initial: true,
          children: [],
        ),
        AutoRoute(
          page: DashboardRoute.page,
          path: DashboardScreen.path,
          children: [],
        ),
        AutoRoute(
          page: CsvRoute.page,
          path: CsvScreen.path,
        ),
        // AutoRoute(
        //   page: EnterVehiclesRoute.page,
        //   path: EnterVehiclesScreen.path,
        // ),

        // AutoRoute(
        //   page: PriceSettingsRoute.page,
        //   path: PriceSettingsScreen.path,
        // ),

        // AutoRoute(
        //   page: ExitVehicleRoute.page,
        //   path: ExitVehicleScreen.path,
        // ),

        // AutoRoute(
        //   page: HistoryRoute.page,
        //   path: HistoryScreen.path,
        // )
      ];
}
