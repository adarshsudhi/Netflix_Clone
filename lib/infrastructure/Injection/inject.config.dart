// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:netflix/Application/Download/download_bloc.dart' as _i22;
import 'package:netflix/Application/GetActors/get_actors_bloc.dart' as _i24;
import 'package:netflix/Application/GetMovieActors/get_movie_actors_bloc.dart'
    as _i11;
import 'package:netflix/Application/HotandNew/comingsoon/bloc/comingsoon_bloc.dart'
    as _i21;
import 'package:netflix/Application/HotandNew/Everyoneswatching/bloc/everyones_bloc.dart'
    as _i23;
import 'package:netflix/Application/Search/search_bloc.dart' as _i25;
import 'package:netflix/Application/Topindian/topindianmovie_bloc.dart' as _i18;
import 'package:netflix/Application/Toprated/toprated_bloc.dart' as _i26;
import 'package:netflix/Domain/Downloads/DownloadRepo.dart' as _i5;
import 'package:netflix/Domain/GetActors/Actorsabstract.dart' as _i12;
import 'package:netflix/Domain/GetMovieActors/GetMovieAbtract.dart' as _i9;
import 'package:netflix/Domain/Hot&New/ComingsoonAbstract.dart' as _i3;
import 'package:netflix/Domain/Hot&New/EveryOnesabstract.dart' as _i7;
import 'package:netflix/Domain/Searchmodel/Searchabstract.dart' as _i14;
import 'package:netflix/Domain/TopIndianmovies/Topindianabtract.dart' as _i16;
import 'package:netflix/Domain/TopRatedShows/Topratedabtract.dart' as _i19;
import 'package:netflix/infrastructure/Repository/Downloads/DownloadReposiory.dart'
    as _i6;
import 'package:netflix/infrastructure/Repository/GetActors/Getactors.dart'
    as _i13;
import 'package:netflix/infrastructure/Repository/GetMovieActors/GetMovieactorsRespository.dart'
    as _i10;
import 'package:netflix/infrastructure/Repository/Hotandnew/Comingsoon/ComingsoonRepository.dart'
    as _i4;
import 'package:netflix/infrastructure/Repository/Hotandnew/Everyoneswatching/EveryOnesWatching.dart'
    as _i8;
import 'package:netflix/infrastructure/Repository/Search/SearchRepositary.dart'
    as _i15;
import 'package:netflix/infrastructure/Repository/TopIndianmovies/TopIndianRepositary.dart'
    as _i17;
import 'package:netflix/infrastructure/Repository/TopRatedShows/TopratedRepository.dart'
    as _i20;

extension GetItInjectableX on _i1.GetIt {
  // initializes the registration of main-scope dependencies inside of GetIt
  _i1.GetIt init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    gh.lazySingleton<_i3.ComingsoonRepo>(() => _i4.ComingsoonRepository());
    gh.lazySingleton<_i5.DownloadRepo>(() => _i6.DownloadRepositary());
    gh.lazySingleton<_i7.EveryonesRepo>(() => _i8.EveryOnesWatching());
    gh.lazySingleton<_i9.GetMovieActorREPO>(() => _i10.GetmovieRespository());
    gh.factory<_i11.GetMovieActorsBloc>(
        () => _i11.GetMovieActorsBloc(gh<_i9.GetMovieActorREPO>()));
    gh.lazySingleton<_i12.GetactorRepo>(() => _i13.GetActorsRepository());
    gh.lazySingleton<_i14.SearchRepo>(() => _i15.Searchrespositaory());
    gh.lazySingleton<_i16.TopIndianRepo>(() => _i17.Topindianrepositary());
    gh.factory<_i18.TopindianmovieBloc>(
        () => _i18.TopindianmovieBloc(gh<_i16.TopIndianRepo>()));
    gh.lazySingleton<_i19.TopratedRepo>(() => _i20.TopratedRepository());
    gh.factory<_i21.ComingsoonBloc>(
        () => _i21.ComingsoonBloc(gh<_i3.ComingsoonRepo>()));
    gh.factory<_i22.DownloadBloc>(
        () => _i22.DownloadBloc(gh<_i5.DownloadRepo>()));
    gh.factory<_i23.EveryonesBloc>(
        () => _i23.EveryonesBloc(gh<_i7.EveryonesRepo>()));
    gh.factory<_i24.GetActorsBloc>(
        () => _i24.GetActorsBloc(gh<_i12.GetactorRepo>()));
    gh.factory<_i25.SearchBloc>(() => _i25.SearchBloc(
          gh<_i5.DownloadRepo>(),
          gh<_i14.SearchRepo>(),
        ));
    gh.factory<_i26.TopratedBloc>(
        () => _i26.TopratedBloc(gh<_i19.TopratedRepo>()));
    return this;
  }
}
