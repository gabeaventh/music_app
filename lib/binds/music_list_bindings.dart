import 'package:get/get.dart';
import 'package:music_app/screens/music_list/bloc/music_list_bloc.dart';
import 'package:music_app/screens/music_list/bloc/player/player_bloc.dart';
import 'package:music_app/screens/music_list/services/service.dart';

/// [MusicListBinding] is a [GetX] binding that provides dependencies injection
/// for the application to use.
class MusicListBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<MusicListBloc>(MusicListBloc.new);
    Get.lazyPut<MusicPlayerBloc>(MusicPlayerBloc.new);
    Get.lazyPut<MusicListService>(MusicListService.new);
  }
}
