import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

@immutable
abstract class OnboardingEvent extends Equatable {
  const OnboardingEvent();
}

class OnboardingChangeStep extends OnboardingEvent {
  final int index;
  const OnboardingChangeStep({required this.index});

  @override
  List<Object> get props => [index];
}
