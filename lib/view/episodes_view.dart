import 'package:flutter/material.dart';

class EpisodesView extends StatefulWidget {
  const EpisodesView({ Key? key }) : super(key: key);

  @override
  _EpisodesViewState createState() => _EpisodesViewState();
}

class _EpisodesViewState extends State<EpisodesView> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(child: Text('episodes page'),),
    );
  }
}