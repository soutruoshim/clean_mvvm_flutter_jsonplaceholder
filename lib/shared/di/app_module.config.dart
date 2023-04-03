// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i4;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:pretty_dio_logger/pretty_dio_logger.dart' as _i6;

import '../../features/album/data/network/album_remote_imp.dart' as _i9;
import '../../features/album/data/network/service/album_apis.dart' as _i7;
import '../../features/album/data/repository/album_remote.dart' as _i8;
import '../../features/album/data/repository/album_repo_imp.dart' as _i11;
import '../../features/album/domain/repository/album_repo.dart' as _i10;
import '../../features/album/domain/usecase/get_album_details_use_case.dart'
    as _i12;
import '../../features/album/domain/usecase/get_album_list_use_case.dart'
    as _i13;
import '../../features/album/presentation/album_details_view_model.dart'
    as _i14;
import '../../features/album/presentation/album_list_view_model.dart' as _i15;
import '../data/network/di/network_module.dart' as _i17;
import '../router/router.gr.dart' as _i3;
import '../router/router_module.dart' as _i16;
import '../service/navigation_service.dart'
    as _i5; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(
  _i1.GetIt get, {
  String? environment,
  _i2.EnvironmentFilter? environmentFilter,
}) {
  final gh = _i2.GetItHelper(
    get,
    environment,
    environmentFilter,
  );
  final navigationModule = _$NavigationModule();
  final networkModule = _$NetworkModule();
  gh.lazySingleton<_i3.AppRouter>(() => navigationModule.router);
  gh.lazySingleton<_i4.Dio>(() => networkModule.dio);
  gh.lazySingleton<Map<String, String>>(() => networkModule.headers);
  gh.singleton<_i5.NavigationService>(
      _i5.NavigationServiceImp(get<_i3.AppRouter>()));
  gh.lazySingleton<_i6.PrettyDioLogger>(
      () => networkModule.dioLoggingInterceptor);
  gh.factory<String>(
    () => networkModule.baseURL,
    instanceName: 'baseURL',
  );
  gh.factory<_i7.AlbumAPIs>(() => _i7.AlbumAPIs(
        get<_i4.Dio>(),
        baseUrl: get<String>(instanceName: 'baseURL'),
      ));
  gh.factory<_i8.AlbumRemote>(() => _i9.AlbumRemoteImp(get<_i7.AlbumAPIs>()));
  gh.factory<_i10.AlbumRepository>(
      () => _i11.AlbumRepositoryImp(get<_i8.AlbumRemote>()));
  gh.factory<_i12.GetAlbumDetailsUseCase>(
      () => _i12.GetAlbumDetailsUseCase(get<_i10.AlbumRepository>()));
  gh.factory<_i13.GetAlbumListUseCase>(
      () => _i13.GetAlbumListUseCase(get<_i10.AlbumRepository>()));
  gh.factory<_i14.AlbumDetailsViewModel>(
      () => _i14.AlbumDetailsViewModel(get<_i12.GetAlbumDetailsUseCase>()));
  gh.factory<_i15.AlbumListViewModel>(() => _i15.AlbumListViewModel(
        get<_i13.GetAlbumListUseCase>(),
        get<_i5.NavigationService>(),
      ));
  return get;
}

class _$NavigationModule extends _i16.NavigationModule {}

class _$NetworkModule extends _i17.NetworkModule {}
