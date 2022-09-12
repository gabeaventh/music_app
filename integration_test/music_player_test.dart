import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';
import 'package:music_app/main.dart' as player;

void main() {
  final binding = IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  binding.framePolicy = LiveTestWidgetsFlutterBindingFramePolicy.fullyLive;

  group("end-to-end test for Music Player", () {
    testWidgets(
        'should display list of songs, by typing for artist name, play, pause, and stop the first song',
        (WidgetTester tester) async {
      player.main();
      await tester.pumpAndSettle(const Duration(seconds: 1));
      final Finder searchBar =
          find.widgetWithText(TextField, 'Search by Artist');
      expect(searchBar, findsOneWidget);

      await tester.enterText(searchBar, 'twice');
      await tester.pumpAndSettle(const Duration(seconds: 1));

      await tester.tap(find.byIcon(Icons.search));
      await tester.pumpAndSettle(const Duration(seconds: 5));

      expect(find.text('twice'), findsOneWidget);
      final Finder firstTile = find.byKey(const Key('MUSIC-TILE-0'));
      final Finder pauseButton = find.byIcon(Icons.pause);
      final Finder playButton = find.byIcon(Icons.play_arrow);
      final Finder stopButton = find.byIcon(Icons.stop);
      final Finder volumeUpButton = find.byIcon(Icons.volume_up);
      expect(firstTile, findsOneWidget);
      await tester.tap(firstTile);
      await tester.pumpAndSettle(const Duration(seconds: 2));
      expect(pauseButton, findsOneWidget);
      expect(find.byKey(const Key("PLAYER-BAR")), findsOneWidget);

      await tester.tap(pauseButton);
      await tester.pumpAndSettle(const Duration(seconds: 2));
      expect(playButton, findsOneWidget);

      await tester.tap(stopButton);
      await tester.pumpAndSettle(const Duration(seconds: 2));
      expect(volumeUpButton, findsNothing);
    });
  });
}
