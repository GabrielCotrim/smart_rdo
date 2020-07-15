import 'package:bloc/bloc.dart';
import 'app_state.dart';
import 'app_event.dart';

class AppBloc extends Bloc<AppEvent, AppState>{
  AppBloc() : super(AppInitial());

  @override
  Stream<AppState> mapEventToState(AppEvent event) {
    throw UnimplementedError();
  }
}