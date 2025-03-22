import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

class ThemeState extends Equatable {
  final ThemeMode themeMode;

  const ThemeState({
    this.themeMode = ThemeMode.system,
  });

  ThemeState copyWith({
    ThemeMode? themeMode,
  }) => ThemeState(
    themeMode: themeMode ?? this.themeMode,
  );

  @override
  List<Object?> get props => [
    themeMode,
  ];
  
}