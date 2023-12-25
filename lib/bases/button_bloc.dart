import 'package:custom_progress_button/custom_progress_button.dart';
import 'package:rxdart/rxdart.dart';

import 'bloc_base.dart';

class ButtonBloc extends BlocBase {
  final failedBehaviour = BehaviorSubject<String>();
  final buttonBehavior = BehaviorSubject<ButtonState>();
  final codeFailedBehaviour = BehaviorSubject<String>();
  final codeButtonBehavior = BehaviorSubject<ButtonState>();
  final oldPasswordVisibilityBehaviour = BehaviorSubject<bool>();
  final passwordVisibilityBehaviour = BehaviorSubject<bool>();
  final confirmPasswordVisibilityBehaviour = BehaviorSubject<bool>();

  void init() {
    oldPasswordVisibilityBehaviour.sink.add(true);
    passwordVisibilityBehaviour.sink.add(true);
    confirmPasswordVisibilityBehaviour.sink.add(true);
    buttonBehavior.sink.add(ButtonState.idle);
  }

  @override
  void dispose() {
    buttonBehavior.close();
    passwordVisibilityBehaviour.close();
    confirmPasswordVisibilityBehaviour.close();
    oldPasswordVisibilityBehaviour.close();
    failedBehaviour.close();
    codeFailedBehaviour.close();
    codeButtonBehavior.close();
  }
}
