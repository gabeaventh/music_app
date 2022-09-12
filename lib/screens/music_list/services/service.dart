import 'package:core/modules/network/error/network_error.dart';
import 'package:core/modules/network/rest_service.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

class MusicListService extends CoreRestService {
  /// fetch music list
  /// by artist name
  Future<Either<Response, NetworkError>> searchByArtist(String artist) {
    return network.get(
      path: '/search',
      queryParameters: {
        "term": artist,
        "media": "music",
      },
    );
  }
}
