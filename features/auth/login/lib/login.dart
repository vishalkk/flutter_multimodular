import 'package:datastore/provider/session_provider.dart';
import 'package:datastore/provider/session_providerimpl.dart';

/// A Calculator.
class Calculator {
  /// Returns [value] plus 1.
  int addOne(int value) => value + 1;
  var session = DevSessionProviderimpl();
}
