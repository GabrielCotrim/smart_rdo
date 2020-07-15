import 'package:equatable/equatable.dart';

abstract class AppEvent extends Equatable {
  const AppEvent();
}

class AppInitialize extends AppEvent {
  @override
  List<Object> get props => [];
}