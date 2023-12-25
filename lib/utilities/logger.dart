import 'dart:developer' as developer;

class Logger {
  static void log(
      {required String message,
      required String name,
      dynamic error,
      StackTrace? stackTrace}) {
    developer.log(
      message,
      name: name,
      error: error,
      stackTrace: stackTrace,
    );
  }
}
