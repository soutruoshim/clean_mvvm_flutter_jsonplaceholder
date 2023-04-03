import 'package:clean_mvvm_flutter/features/album/domain/usecase/get_album_details_use_case.dart';
import 'package:clean_mvvm_flutter/features/album/entity/album.dart';
import 'package:clean_mvvm_flutter/shared/presentation/base_view_model.dart';
import 'package:clean_mvvm_flutter/shared/presentation/extensions/extensions.dart';
import 'package:injectable/injectable.dart';

@injectable
class AlbumDetailsViewModel extends BaseViewModel {
  final GetAlbumDetailsUseCase _getAlbumDetailsUseCase;

  late Stream<bool> loading;
  late Stream<String> albumTitle;

  AlbumDetailsViewModel(this._getAlbumDetailsUseCase) {
    _init();
  }

  void _init() {
    loading = _getAlbumDetailsUseCase.result.map((event) => false);
    albumTitle = _getAlbumDetailsUseCase.result.mapSuccess((event) => event.title);
  }

  void onScreenStarted(int id) {
    _loadDetails(id);
  }

  void _loadDetails(int id) {
    _getAlbumDetailsUseCase.execute(id);
  }
}