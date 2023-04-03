import 'package:injectable/injectable.dart';

import '../../../../shared/domain/usecase/base_use_case.dart';
import '../../entity/album.dart';
import '../repository/album_repo.dart';
import 'package:result_monad/result_monad.dart';
import 'package:clean_mvvm_flutter/shared/vo/error.dart';

@injectable
class GetAlbumListUseCase extends BaseUseCase<Result<List<Album>, Error>> {
  final AlbumRepository _albumRepository;

  GetAlbumListUseCase(this._albumRepository);

  @override
  Stream<Result<List<Album>, Error>> invoke() => _albumRepository.getAlbumList();
}