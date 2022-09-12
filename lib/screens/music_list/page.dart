import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:just_audio/just_audio.dart';
import 'package:music_app/models/music.dart';
import 'package:music_app/screens/music_list/bloc/music_list_bloc.dart';
import 'package:music_app/screens/music_list/bloc/player/player_bloc.dart';
import 'package:music_app/screens/music_list/initiator.dart';
import 'package:music_app/screens/music_list/view.dart';

class MusicListPage extends StatefulWidget {
  const MusicListPage({Key? key}) : super(key: key);

  @override
  _MusicListPageState createState() => _MusicListPageState();
}

class _MusicListPageState extends State<MusicListPage>
    with SingleTickerProviderStateMixin {
  /// initiate Animation controller and Animation for hidding and showing the player.
  late AnimationController _animationController;
  late Animation<double> _animation;

  /// initiate [MusicListInitiator]
  late MusicListInitiator _i;
  @override
  void initState() {
    _i = MusicListInitiator()..init(context);
    prepareAnimation();
    super.initState();
  }

  /// Prepare animation for hiding and showing the player.
  prepareAnimation() {
    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 500),
    );
    _animation = CurvedAnimation(
      parent: _animationController,
      curve: Curves.easeIn,
    );
  }

  @override
  Widget build(BuildContext context) {
    /// [StreamBuilder] to handle [AudioPlayer] state.
    return StreamBuilder<PlayerState>(
        stream: _i.player.playerStateStream,
        builder: (context, snapshot) {
          PlayerState? playerState = snapshot.data;
          ProcessingState? processingState = playerState?.processingState;
          bool? isPlaying = playerState?.playing;
          if (isPlaying == true &&
              processingState == ProcessingState.completed) {
            _i.stop();
          }

          return BlocBuilder(
            bloc: _i.bloc,
            builder: (context, state) {
              List<Music>? listMusic;
              int? playingMusicId;
              if (state is MusicListLoaded) {
                listMusic = state.loadedData?.results;
              }

              /// [BlocConsumer] to listen and build when [MusicPlayerBloc] state changes.
              return BlocConsumer(
                bloc: _i.playerBloc,
                listener: (context, state) {
                  if (state is MusicPlaying) {
                    _animationController.forward();
                  }
                  if (state is MusicStopped) {
                    _animationController.reverse();
                  }
                },
                builder: (context, MusicPlayerState pState) {
                  /// map [_playingMusicId] to [MusicPlayerState]
                  /// to get the playing music id.
                  /// according to the [MusicPlayerState]
                  pState.maybeWhen(
                    playing: (music) {
                      playingMusicId = music?.trackId;
                    },
                    paused: (music) {
                      playingMusicId = music?.trackId;
                    },
                    orElse: () {
                      playingMusicId = null;
                    },
                  );

                  if (pState is MusicStopped) {
                    playingMusicId = null;
                  }

                  /// Render [MusicListView]
                  /// then insert all [MusicListView] Constructor parameters.
                  return MusicListView(
                    controller: _i.searchController,
                    playingMusicId: playingMusicId,
                    musicList: listMusic ?? [],
                    isLoading: state is MusicListLoading,
                    animation: _animation,
                    playerState: pState,
                    onTap: _i.play,
                    onPause: _i.pause,
                    onResume: _i.resume,
                    onStop: _i.stop,
                    onSearch: _i.searchSongByArtist,
                  );
                },
              );
            },
          );
        });
  }
}
