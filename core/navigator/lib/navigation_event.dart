import 'package:navigator/navigation_type.dart';

abstract class NavigationEvent {
  const NavigationEvent();
}

class NavigateToRoute extends NavigationEvent {
  final String route;
  final NavigationType navigationType;

  const NavigateToRoute(this.route, this.navigationType);
}

class NavigateToMain extends NavigationEvent {}

class NavigateToLogin extends NavigationEvent {}
