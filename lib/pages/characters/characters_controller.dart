import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:get/get.dart';
import 'package:rick_and_morty/models/all_characters_model.dart';
import 'package:rick_and_morty/models/character_model.dart';
import 'package:rick_and_morty/services/character/character_requests.dart';

class CharactersController extends GetxController {
  final String title = 'Characters';

  bool isLoading = true;

  bool visibilityStatus = true;

  List<Character> characterList = [];

  @override
  void onInit() {
    getCharacters();

    ScrollController _hideButtonController = new ScrollController();
    _hideButtonController.addListener(() {
      if (_hideButtonController.position.userScrollDirection == ScrollDirection.reverse) {
        if (visibilityStatus == true) {
          visibilityStatus = false;
        }
      } else {
        if (_hideButtonController.position.userScrollDirection == ScrollDirection.forward) {
          if (visibilityStatus == false) {
            visibilityStatus = true;
          }
        }
      }
    });

    super.onInit();
  }

  getCharacters() async {
    try {
      var result = await CharacterService().getAllCharacters();
      AllCharacters(info: result.info, results: result.results);
      characterList = result.results;
      print(result.results.first.name);
      isLoading = false;
      update();
      return characterList;
    } catch (e) {
      print(e);
    }
  }
}
