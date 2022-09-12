import 'package:get/get.dart';
import 'package:music_app/binds/music_list_bindings.dart';
import 'package:music_app/routes/name.dart';
import 'package:music_app/screens/music_list/page.dart';

class AppRoutes {
  static List<GetPage> getRoutes = [
    GetPage(
      name: Routes.APP,
      page: MusicListPage.new,
      binding: MusicListBinding(),
    ),
  ];
}
