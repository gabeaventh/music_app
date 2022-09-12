import 'dart:convert';

import 'package:core/modules/network/error/network_error.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:get/get.dart';
import 'package:music_app/models/itunes.dart';
import 'package:music_app/screens/music_list/services/service.dart';

part 'music_list_bloc.freezed.dart';
part 'music_list_event.dart';
part 'music_list_state.dart';

/// [MusicListBloc] class
/// to manage music list state
class MusicListBloc extends Bloc<MusicListEvent, MusicListState> {
  final MusicListService? _service;
  MusicListBloc({MusicListService? service})
      : _service = service ?? Get.find<MusicListService>(),
        super(const MusicListInitial()) {
    on<SearchByArtist>((event, emit) async {
      emit(const MusicListState.loading());
      if (event.artist == null || event.artist!.isEmpty) {
        emit(const MusicListState.error());
      }
      await _service
          ?.searchByArtist(event.artist!)
          .then((value) => emit(value.fold(
                (result) {
                  return MusicListState.loaded(
                    loadedData: ITunes.fromJson(jsonDecode(result.data)),
                  );
                },
                (error) => MusicListState.error(error: error),
              )));
    });
  }
}
