import 'package:injectable/injectable.dart';

import '../../domain/repository/album_repo.dart';

import 'package:result_monad/result_monad.dart';
import 'package:clean_mvvm_flutter/shared/vo/error.dart';

import '../../entity/album.dart';
import 'album_remote.dart';


@Injectable(as: AlbumRepository)
class AlbumRepositoryImp implements AlbumRepository {
  final AlbumRemote _remoteSource;

  AlbumRepositoryImp(this._remoteSource);

  @override
  Stream<Result<Album, Error>> getAlbum(int id) => _remoteSource.fetchAlbum(id);

  @override
  Stream<Result<List<Album>, Error>> getAlbumList() => _remoteSource.fetchAlbumList();

}