import 'package:equatable/equatable.dart';

abstract class AppState extends Equatable{
  const AppState();
}

class AppInitial extends AppState {
  @override
  List<Object> get props => [];

}