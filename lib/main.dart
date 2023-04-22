import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:netflix/Application/Download/download_bloc.dart';
import 'package:netflix/Application/Firebase/Getcurretnuser/getcurrentuser_bloc.dart';
import 'package:netflix/Application/Firebase/Getvideos/getvideos_bloc.dart';
import 'package:netflix/Application/GetActors/get_actors_bloc.dart';
import 'package:netflix/Application/GetMovieActors/get_movie_actors_bloc.dart';
import 'package:netflix/Application/HotandNew/Everyoneswatching/bloc/everyones_bloc.dart';
import 'package:netflix/Application/HotandNew/comingsoon/bloc/comingsoon_bloc.dart';
import 'package:netflix/Application/Search/search_bloc.dart';
import 'package:netflix/Application/Topindian/topindianmovie_bloc.dart';
import 'package:netflix/Application/Toprated/toprated_bloc.dart';
import 'package:netflix/core/Colors/Colors.dart';
import 'package:netflix/core/Colors/Strings.dart';
import 'package:netflix/infrastructure/injection/inject.dart';
import 'package:netflix/presentation/Home/Homescree.dart';
import 'package:netflix/presentation/LoginScreen/LoginScreen.dart';
import 'package:netflix/presentation/Main/MainScreen.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() async {
  await Configureinjection();
  await WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (_) => getIt<DownloadBloc>()),
        BlocProvider(create: (_) => getIt<SearchBloc>()),
        BlocProvider(
          create: (_) => getIt<ComingsoonBloc>(),
        ),
        BlocProvider(
          create: (_) => getIt<EveryonesBloc>(),
        ),
        BlocProvider(create: (_) => getIt<TopratedBloc>()),
        BlocProvider(
          create: (_) => getIt<TopindianmovieBloc>(),
        ),
        BlocProvider(
          create: (_) => getIt<GetActorsBloc>(),
        ),
        BlocProvider(
          create: (_) => getIt<GetMovieActorsBloc>(),
        ),
        BlocProvider(
          create: (_) => GetcurrentuserBloc(),
        ),
        BlocProvider(create: (_) => GetvideosBloc())
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'NetFlix',
        theme: ThemeData(
          iconTheme: IconThemeData(color: Colors.white),
          appBarTheme: AppBarTheme(color: Colors.black),
          scaffoldBackgroundColor: BackGroundColor,
          textTheme:
              TextTheme(bodyLarge: TextStyle(), bodyMedium: TextStyle()).apply(
            bodyColor: Colors.white,
            displayColor: Colors.blue,
          ),
        ),
        home: StreamBuilder(
            stream: Auth.authStateChanges(),
            builder: (context, snapshot) {
              if (snapshot.hasData &&
                  snapshot.connectionState == ConnectionState.active) {
                return MainScreen();
              } else {
                if (snapshot.hasError) {
                  Center(
                    child: Text("An Error Occured"),
                  );
                } else if (snapshot.connectionState ==
                    ConnectionState.waiting) {
                  return Center(
                    child: CircularProgressIndicator(),
                  );
                }
                return LoginScreen();
              }
            }),
      ),
    );
  }
}
