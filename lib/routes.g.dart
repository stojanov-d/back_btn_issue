// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'routes.dart';

// **************************************************************************
// GoRouterGenerator
// **************************************************************************

List<RouteBase> get $appRoutes => [
  $homeRoute,
  $detailsRoute,
  $moreDetailsRoute,
  $evenMoreDetailsRoute,
];

RouteBase get $homeRoute =>
    GoRouteData.$route(path: '/', factory: $HomeRoute._fromState);

mixin $HomeRoute on GoRouteData {
  static HomeRoute _fromState(GoRouterState state) => HomeRoute();

  @override
  String get location => GoRouteData.$location('/');

  @override
  void go(BuildContext context) => context.go(location);

  @override
  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  @override
  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  @override
  void replace(BuildContext context) => context.replace(location);
}

RouteBase get $detailsRoute =>
    GoRouteData.$route(path: '/details', factory: $DetailsRoute._fromState);

mixin $DetailsRoute on GoRouteData {
  static DetailsRoute _fromState(GoRouterState state) => DetailsRoute();

  @override
  String get location => GoRouteData.$location('/details');

  @override
  void go(BuildContext context) => context.go(location);

  @override
  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  @override
  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  @override
  void replace(BuildContext context) => context.replace(location);
}

RouteBase get $moreDetailsRoute => GoRouteData.$route(
  path: '/details/:id',
  factory: $MoreDetailsRoute._fromState,
);

mixin $MoreDetailsRoute on GoRouteData {
  static MoreDetailsRoute _fromState(GoRouterState state) =>
      MoreDetailsRoute(id: state.pathParameters['id']!);

  MoreDetailsRoute get _self => this as MoreDetailsRoute;

  @override
  String get location =>
      GoRouteData.$location('/details/${Uri.encodeComponent(_self.id)}');

  @override
  void go(BuildContext context) => context.go(location);

  @override
  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  @override
  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  @override
  void replace(BuildContext context) => context.replace(location);
}

RouteBase get $evenMoreDetailsRoute => GoRouteData.$route(
  path: '/evenmoredetails/:id',
  factory: $EvenMoreDetailsRoute._fromState,
);

mixin $EvenMoreDetailsRoute on GoRouteData {
  static EvenMoreDetailsRoute _fromState(GoRouterState state) =>
      EvenMoreDetailsRoute(id: state.pathParameters['id']!);

  EvenMoreDetailsRoute get _self => this as EvenMoreDetailsRoute;

  @override
  String get location => GoRouteData.$location(
    '/evenmoredetails/${Uri.encodeComponent(_self.id)}',
  );

  @override
  void go(BuildContext context) => context.go(location);

  @override
  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  @override
  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  @override
  void replace(BuildContext context) => context.replace(location);
}
