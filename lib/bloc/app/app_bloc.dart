import 'package:bloc/bloc.dart';
import 'app_state.dart';
import 'app_event.dart';

class AppBloc extends Bloc<AppEvent, AppState>{
  AppBloc() : super(AppState.initial());

  @override
  Stream<AppState> mapEventToState(AppEvent event) async* {
    if (event is AppInitialize){
      yield* _appInitialize();
    }
  }

  Stream<AppState> _appInitialize() async* {
  }
}