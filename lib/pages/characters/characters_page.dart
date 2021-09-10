import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rick_and_morty/pages/characters/characters_controller.dart';

import 'characters_controller.dart';

class CharactersPage extends GetView<CharactersController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(CupertinoIcons.line_horizontal_3),
      ),
      appBar: AppBar(
        title: Text(
          controller.title,
          style: TextStyle(color: Colors.black),
        ),
        elevation: 0,
        backgroundColor: Colors.white,
      ),
      body: Container(
        child: Center(
          child: Text(
            "Character Page",
            style: TextStyle(fontSize: 20),
          ),
        ),
      ),
    );
  }
}
