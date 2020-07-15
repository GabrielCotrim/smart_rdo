import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:smart_rdo/bloc/bloc.dart';
import 'package:bloc/bloc.dart';
import 'package:smart_rdo/screens/home_screen.dart';
import 'app_theme.dart';

class RdoApp extends StatefulWidget {

  @override
  State<StatefulWidget> createState() => _RdoAppState();
}

class _RdoAppState extends State<RdoApp> {
  AppBloc _appBloc;

  @override
  void initState() {
    super.initState();
    _appBloc = AppBloc();
    Bloc.observer = SimpleBlocObserver();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: AppTheme.lightTheme,
      debugShowCheckedModeBanner: false,
      home: BlocProvider(
        create: (context) => _appBloc,
        child: HomeScreen(),
      ),
      localizationsDelegates: [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate
      ],
      supportedLocales: [
        const Locale('pt', 'BR'),
      ],
    );
  }
}
