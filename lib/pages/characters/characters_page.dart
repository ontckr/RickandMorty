import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rick_and_morty/core/loading_overlay.dart';
import 'package:rick_and_morty/pages/characters/characters_controller.dart';
import 'package:rick_and_morty/pages/characters/components/character_list_item.dart';
import 'package:rick_and_morty/pages/characters/components/filter_button/filter_button.dart';

import 'characters_controller.dart';

class CharactersPage extends GetView<CharactersController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(    /// SEARCH
      //   title: Text(
      //     controller.title,
      //     style: TextStyle(color: Colors.black),
      //   ),
      //   elevation: 0,
      //   backgroundColor: Colors.white,
      // ),
      body: Stack(
        children: [
          Container(
            child: GetBuilder<CharactersController>(
              builder: (controller) {
                return LoadingOverlay(
                  isLoading: controller.isLoading,
                  child: GridView.builder(
                    gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      crossAxisSpacing: 10,
                      mainAxisSpacing: 5,
                    ),
                    itemCount: controller.characterList.length,
                    itemBuilder: (context, index) => CharacterListItem(
                      character: controller.characterList[index],
                    ),
                  ),
                );
              },
            ),
          ),
          Visibility(
            visible: controller.visibilityStatus,
            child: Align(
              alignment: Alignment.bottomCenter,
              child: FilterButton(),
            ),
          )
        ],
      ),
    );
  }
}
