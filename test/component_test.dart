// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:music_app/models/music.dart';
import 'package:music_app/screens/music_list/bloc/player/player_bloc.dart';
import 'package:music_app/screens/music_list/components/music_tile.dart';
import 'package:music_app/screens/music_list/components/player_bar.dart';
import 'package:music_app/screens/music_list/components/search_bar.dart';
import 'package:network_image_mock/network_image_mock.dart';

void main() {
  late Music music;
  Map<String, dynamic> musicJson = {
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
    "artistViewUrl": "https://music.apple.com/us/artist/twice/1203816887?uo=4",
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
  };

  setUp(() {
    music = Music.fromJson(musicJson);
  });
  testWidgets('Music Tile Test', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    mockNetworkImagesFor(() async {
      await tester.pumpWidget(MaterialApp(
        home: Scaffold(
          body: MusicTile(
            key: const Key('MUSIC-TILE-0'),
            music: music,
            index: 1,
            onTap: (music) {},
            isPlaying: false,
          ),
        ),
      ));

      final finder = find.byKey(const Key('MUSIC-TILE-0'));
      expect(finder, findsOneWidget);
    });
  });

  testWidgets('Player Bar Test', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    mockNetworkImagesFor(() async {
      await tester.pumpWidget(MaterialApp(
        home: Scaffold(
          body: PlayerBar(
            key: const Key('PLAYER-BAR'),
            musicPlayerState: const MusicPlayerState.playing(),
            onPause: (_) {},
            onResume: (_) {},
            onStop: () {},
          ),
        ),
      ));

      final finder = find.byIcon(Icons.pause);
      expect(finder, findsOneWidget);
    });
  });

  testWidgets('Search Bar Test', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    mockNetworkImagesFor(() async {
      await tester.pumpWidget(MaterialApp(
        home: Scaffold(
          body: MusicSearchBar(
            key: const Key('SEARCH-BAR'),
            onSearch: () {},
            searchController: TextEditingController(),
            hintText: "Search",
          ),
        ),
      ));

      final finder = find.byIcon(Icons.search);
      expect(finder, findsOneWidget);
    });
  });
}
