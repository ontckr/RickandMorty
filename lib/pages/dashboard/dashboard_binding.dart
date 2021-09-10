import 'package:get/get.dart';
import 'package:rick_and_morty/pages/characters/characters_controller.dart';
import 'package:rick_and_morty/pages/episodes/episodes_controller.dart';

import 'dashboard_controller.dart';

class DashboardBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<DashboardController>(() => DashboardController());
    Get.lazyPut<CharactersController>(() => CharactersController());
    Get.lazyPut<EpisodesController>(() => EpisodesController());
  }
}
