// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i3;
import 'package:flutter/material.dart' as _i4;

import '../../features/album/ui/album_details_screen.dart' as _i2;
import '../../features/album/ui/album_list_screen.dart' as _i1;

class AppRouter extends _i3.RootStackRouter {
  AppRouter([_i4.GlobalKey<_i4.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i3.PageFactory> pagesMap = {
    AlbumListScreen.name: (routeData) {
      return _i3.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i1.AlbumListScreen(),
      );
    },
    AlbumDetailsScreen.name: (routeData) {
      final args = routeData.argsAs<AlbumDetailsScreenArgs>();
      return _i3.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i2.AlbumDetailsScreen(args.id),
      );
    },
  };

  @override
  List<_i3.RouteConfig> get routes => [
        _i3.RouteConfig(
          AlbumListScreen.name,
          path: '/',
        ),
        _i3.RouteConfig(
          AlbumDetailsScreen.name,
          path: '/album-details-screen',
        ),
      ];
}

/// generated route for
/// [_i1.AlbumListScreen]
class AlbumListScreen extends _i3.PageRouteInfo<void> {
  const AlbumListScreen()
      : super(
          AlbumListScreen.name,
          path: '/',
        );

  static const String name = 'AlbumListScreen';
}

/// generated route for
/// [_i2.AlbumDetailsScreen]
class AlbumDetailsScreen extends _i3.PageRouteInfo<AlbumDetailsScreenArgs> {
  AlbumDetailsScreen({required int id})
      : super(
          AlbumDetailsScreen.name,
          path: '/album-details-screen',
          args: AlbumDetailsScreenArgs(id: id),
        );

  static const String name = 'AlbumDetailsScreen';
}

class AlbumDetailsScreenArgs {
  const AlbumDetailsScreenArgs({required this.id});

  final int id;

  @override
  String toString() {
    return 'AlbumDetailsScreenArgs{id: $id}';
  }
}
