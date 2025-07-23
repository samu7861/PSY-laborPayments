import 'package:auto_route/auto_route.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'app_router.dart';

class AutoRouterManager extends Cubit<RootStackRouter> {
  AutoRouterManager() : super(AppRouter());

  void navigate(PageRouteInfo<dynamic> route) {
    state.navigate(route);
    emit(state);
  }

  void popAndPush(PageRouteInfo<dynamic> route) {
    state.popAndPush(route);
    emit(state);
  }

  void popAndPushAll(PageRouteInfo<dynamic> route) {
    state.popAndPushAll([route]);
    emit(state);
  }

  void back() {
    state.back();
    emit(state);
  }

  void replace(PageRouteInfo<dynamic> route) {
    state.replace(route);
    emit(state);
  }

  void replaceAll(PageRouteInfo<dynamic> route, {updateExistingRoutes = true}) {
    state.replaceAll([route], updateExistingRoutes: updateExistingRoutes);
    emit(state);
  }

  /* void navigateToDetailsPage(BuildContext context) {
      // La ruta a la que deseas navegar
    AutoRouter.of(context).pushReplacement(
      DetailsRoute(),
    );
  } */

//  void navigateTransactionDetails(BuildContext context){
  // AutoRouter.of(context).push(
    // const DetailTransactionsTab(),
  // );
//  }

  void push(PageRouteInfo<dynamic> route) {
    state.push(route);
    emit(state);
  }

  void pushNamed(String path) {
    state.pushNamed(path);
    emit(state);
  }
}
