import 'package:flutter/material.dart';
import 'package:music_app/models/music.dart';
import 'package:music_app/screens/music_list/bloc/player/player_bloc.dart';

/// [PlayerBar] is the widget that contains the player controls.
///
class PlayerBar extends StatelessWidget {
  final MusicPlayerState musicPlayerState;
  final void Function(Music) onResume;
  final void Function(Music) onPause;
  final VoidCallback onStop;
  const PlayerBar({
    Key? key,
    required this.musicPlayerState,
    required this.onResume,
    required this.onPause,
    required this.onStop,
  }) : super(key: key);

  Icon mapIcon() {
    return musicPlayerState.maybeWhen(
      playing: (music) => const Icon(Icons.pause),
      paused: (music) => const Icon(Icons.play_arrow),
      orElse: () => const Icon(Icons.play_arrow),
    );
  }

  Function? mapOnPress() {
    return musicPlayerState.maybeWhen(
      playing: (music) {
        onPause(music!);
        return null;
      },
      paused: (music) {
        onResume(music!);
        return null;
      },
      orElse: () => onPause,
    );
  }

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(12),
      child: Container(
        height: 80,
        margin: const EdgeInsets.only(top: 8),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: Colors.white,
          boxShadow: const [
            BoxShadow(
              color: Colors.grey,
              offset: Offset(0, 1),
              blurRadius: 6,
            ),
          ],
        ),
        child: Row(
          children: [
            Expanded(
              child: SizedBox(
                height: 50,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    IconButton(
                      icon: mapIcon(),
                      onPressed: mapOnPress,
                    ),
                    IconButton(
                      icon: const Icon(
                        Icons.stop,
                      ),
                      onPressed: onStop,
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
