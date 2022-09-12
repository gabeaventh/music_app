import 'dart:convert';

import 'package:bloc_test/bloc_test.dart';
import 'package:core/modules/env/env.dart';
import 'package:core/modules/network/error/network_error.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:music_app/models/itunes.dart';
import 'package:music_app/screens/music_list/bloc/music_list_bloc.dart';
import 'package:music_app/screens/music_list/services/service.dart';

import 'music_list_bloc_test.mocks.dart';

@GenerateMocks([MusicListService])
void main() {
  MusicListService service = MockMusicListService();
  late MusicListState state;
  late MusicListBloc bloc;
  late Map<String, dynamic> musicList;
  setUp(() {
    Env.instance?.initEnv();
    bloc = MusicListBloc(service: service);
    state = const MusicListState.initial();
    musicList = {
      "resultCount": 50,
      "results": [
        {
          "wrapperType": "track",
          "kind": "song",
          "artistId": 1203816887,
          "collectionId": 1555401119,
          "trackId": 1555401122,
          "artistName": "TWICE",
          "collectionName": "Twicecoaster: Lane 1",
          "trackName": "TT",
          "collectionCensoredName": "Twicecoaster: Lane 1",
          "trackCensoredName": "TT",
          "artistViewUrl":
              "https://music.apple.com/us/artist/twice/1203816887?uo=4",
          "collectionViewUrl":
              "https://music.apple.com/us/album/tt/1555401119?i=1555401122&uo=4",
          "trackViewUrl":
              "https://music.apple.com/us/album/tt/1555401119?i=1555401122&uo=4",
          "previewUrl":
              "https://audio-ssl.itunes.apple.com/itunes-assets/AudioPreview115/v4/41/bf/69/41bf694e-5469-1e06-f59d-8b7edb70a944/mzaf_12340905383479602572.plus.aac.p.m4a",
          "artworkUrl30":
              "https://is3-ssl.mzstatic.com/image/thumb/Music114/v4/55/9b/5b/559b5bc3-f1e7-c4fc-7115-0a756f9e4eb0/source/30x30bb.jpg",
          "artworkUrl60":
              "https://is3-ssl.mzstatic.com/image/thumb/Music114/v4/55/9b/5b/559b5bc3-f1e7-c4fc-7115-0a756f9e4eb0/source/60x60bb.jpg",
          "artworkUrl100":
              "https://is3-ssl.mzstatic.com/image/thumb/Music114/v4/55/9b/5b/559b5bc3-f1e7-c4fc-7115-0a756f9e4eb0/source/100x100bb.jpg",
          "collectionPrice": 6.99,
          "trackPrice": 1.29,
          "releaseDate": "2016-10-24T12:00:00Z",
          "collectionExplicitness": "notExplicit",
          "trackExplicitness": "notExplicit",
          "discCount": 1,
          "discNumber": 1,
          "trackCount": 7,
          "trackNumber": 1,
          "trackTimeMillis": 212987,
          "country": "USA",
          "currency": "USD",
          "primaryGenreName": "K-Pop",
          "isStreamable": true
        },
      ]
    };
  });

  tearDown(() {
    bloc.close();
  });

  test('Initial state is correct', () {
    expect(state, bloc.state);
  });

  blocTest(
    'Close doesn\'t emit new states',
    build: () => bloc,
    act: (_) => bloc.close(),
    expect: () => [],
  );
  group('MusicListBloc', () {
    blocTest(
      'should return a list of music',
      build: () => bloc,
      act: (_) {
        when(service.searchByArtist("twice")).thenAnswer(
          (_) async => Left<Response, NetworkError>(
            Response(
              data: jsonEncode(musicList),
              statusCode: 200,
              requestOptions: RequestOptions(
                method: 'GET',
                baseUrl: Env.instance?.baseUrl,
                // with terms and media type
                path: 'search?term=twice&media=music',
              ),
            ),
          ),
        );

        bloc.add(const SearchByArtist(artist: "twice"));
      },
      expect: () => [
        const MusicListLoading(),
        MusicListLoaded(
          loadedData: ITunes.fromJson(musicList),
        ),
      ],
    );
  });
}
