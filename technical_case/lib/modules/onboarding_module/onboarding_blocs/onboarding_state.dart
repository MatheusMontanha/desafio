import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';

@immutable
abstract class OnboardingState extends Equatable {
  const OnboardingState();
}

class InitialOnboardingState extends OnboardingState {
  @override
  List<Object?> get props => [];
}

class OnboardingLoadedWidgetsState extends OnboardingState {
  final List<Widget> widgets;
  const OnboardingLoadedWidgetsState({required this.widgets});
  @override
  List<Object?> get props => [widgets];
  // ignore: annotate_overrides
  bool operator ==(Object other) => false;
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
