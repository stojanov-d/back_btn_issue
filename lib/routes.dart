import 'package:back_btn_issue/main.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

part 'routes.g.dart';

@TypedGoRoute<HomeRoute>(path: '/')
class HomeRoute extends GoRouteData with $HomeRoute{
  @override
  Widget build(BuildContext context, GoRouterState state) => const HomeScreen();
}

@TypedGoRoute<DetailsRoute>(path: '/details')
class DetailsRoute extends GoRouteData with $DetailsRoute{
  @override
  Widget build(BuildContext context, GoRouterState state) => const DetailsScreen();
}

@TypedGoRoute<MoreDetailsRoute>(path: '/details/:id')
class MoreDetailsRoute extends GoRouteData with $MoreDetailsRoute{
  const MoreDetailsRoute({required this.id});

  final String id;
  @override
  Widget build(BuildContext context, GoRouterState state) => MoreDetailsScreen(id: id);
}

@TypedGoRoute<EvenMoreDetailsRoute>(path: '/evenmoredetails/:id')
class EvenMoreDetailsRoute extends GoRouteData with $EvenMoreDetailsRoute{
  const EvenMoreDetailsRoute({required this.id});

  final String id;
  @override
  Widget build(BuildContext context, GoRouterState state) => MoreDetailsScreen(id: id);
}