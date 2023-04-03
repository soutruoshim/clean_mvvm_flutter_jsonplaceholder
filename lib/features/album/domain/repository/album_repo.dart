import 'package:result_monad/result_monad.dart';

import '../../entity/album.dart';
import 'package:clean_mvvm_flutter/shared/vo/error.dart';

abstract class AlbumRepository {
  Stream<Result<Album,Error>> getAlbum(int id);
  Stream<Result<List<Album>,Error>> getAlbumList();
}