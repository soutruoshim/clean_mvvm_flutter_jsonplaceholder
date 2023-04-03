import 'package:injectable/injectable.dart';

import '../../../../shared/domain/usecase/base_use_case.dart';
import '../../entity/album.dart';
import '../repository/album_repo.dart';
import 'package:result_monad/result_monad.dart';
import 'package:clean_mvvm_flutter/shared/vo/error.dart';

@injectable
class GetAlbumDetailsUseCase
    extends BaseUseCaseParam<int, Result<Album, Error>> {
  final AlbumRepository _albumRepository;

  GetAlbumDetailsUseCase(this._albumRepository);

  @override
  Stream<Result<Album, Error>> invoke(int params) =>
      _albumRepository.getAlbum(params);
}