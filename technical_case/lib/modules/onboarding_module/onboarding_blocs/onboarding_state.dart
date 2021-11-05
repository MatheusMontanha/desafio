import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

@immutable
abstract class OnboardingState extends Equatable {
  const OnboardingState();
}

class InitialOnboardingState extends OnboardingState {
  @override
  List<Object?> get props => [];
}

class OnboardingLoadingChangeStepState extends OnboardingState {
  @override
  List<Object?> get props => [];
}

class OnboardingChangeIndexStepState extends OnboardingState {
  final int newIndex;
  const OnboardingChangeIndexStepState({required this.newIndex});

  @override
  List<Object> get props => [newIndex];

  @override
  // ignore: hash_and_equals
  bool operator ==(Object other) => false;
}
