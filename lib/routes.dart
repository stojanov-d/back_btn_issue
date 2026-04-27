import 'package:back_btn_issue/main.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

part 'routes.g.dart';

@TypedGoRoute<HomeRoute>(path: '/',
routes: <TypedGoRoute<GoRouteData>>[
  TypedGoRoute<DetailsRoute>(path: "details"),
  TypedGoRoute<MoreDetailsRoute>(path: "more_details/:id"),
  TypedGoRoute<EvenMoreDetailsRoute>(path: "even_more_details/:id"),
])

class HomeRoute extends GoRouteData with $HomeRoute{
  @override
  Widget build(BuildContext context, GoRouterState state) => const HomeScreen();
}

class DetailsRoute extends GoRouteData with $DetailsRoute{
  @override
  Widget build(BuildContext context, GoRouterState state) => const DetailsScreen();
}

class MoreDetailsRoute extends GoRouteData with $MoreDetailsRoute{
  const MoreDetailsRoute({required this.id});

  final String id;
  @override
  Widget build(BuildContext context, GoRouterState state) => MoreDetailsScreen(id: id);
}

class EvenMoreDetailsRoute extends GoRouteData with $EvenMoreDetailsRoute{
  const EvenMoreDetailsRoute({required this.id});

  final String id;
  @override
  Widget build(BuildContext context, GoRouterState state) => EvenMoreDetailsScreen(id: id);
}