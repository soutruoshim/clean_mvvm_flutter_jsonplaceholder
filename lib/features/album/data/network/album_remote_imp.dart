import 'package:clean_mvvm_flutter/features/album/data/network/service/album_apis.dart';
import 'package:injectable/injectable.dart';

import '../../entity/album.dart';
import '../repository/album_remote.dart';
import 'package:result_monad/result_monad.dart';
import 'package:clean_mvvm_flutter/shared/vo/error.dart';
import 'model/album_model.dart';

@Injectable(as: AlbumRemote)
class AlbumRemoteImp implements AlbumRemote {
  final AlbumAPIs _albumAPIs;

  const AlbumRemoteImp(this._albumAPIs);

  @override
  Stream<Result<Album, Error>> fetchAlbum(int id) async* {
    try {
      var model = await _albumAPIs.fetchAlbum(id);
      yield Result.ok(_mapToAlbum(model));
    } catch (e) {
      yield Result.error(const Error(message: "error"));
    }
  }

  @override
  Stream<Result<List<Album>, Error>> fetchAlbumList() async* {
    try {
      var modelList = await _albumAPIs.fetchAlbumList();
      yield Result.ok(modelList.map((model) => _mapToAlbum(model)).toList());
    } catch (e) {
      yield Result.error(const Error(message: "error"));
    }
  }

  Album _mapToAlbum(AlbumModel model) =>
      Album(userId: model.userId, id: model.id, title: model.title);
}