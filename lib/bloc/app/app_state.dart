import 'package:equatable/equatable.dart';

class AppState extends Equatable {
  final bool isInitialize;
  final bool isLoading;
  final bool isUnauthenticated;
  final bool isAuthenticated;

  const AppState({
    this.isInitialize,
    this.isLoading,
    this.isAuthenticated,
    this.isUnauthenticated,
  });

  @override
  List<Object> get props => [isInitialize, isLoading, isAuthenticated, isUnauthenticated];

  factory AppState.initial() {
    return AppState(
      isInitialize: true,
      isLoading: false,
      isAuthenticated: false,
      isUnauthenticated: false
    );
  }
}
