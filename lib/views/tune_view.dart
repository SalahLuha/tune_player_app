import 'package:flutter/material.dart';
import 'package:music_notes_player_app_setup/widgets/tune_item.dart';

import '../models/tune_model.dart';

class TuneView extends StatelessWidget {
  const TuneView({super.key});
  final List<TuneModel> tunes = const [
    TuneModel(color: Color(0xffF44336), sound: 'note1.wav'),
    TuneModel(color: Color(0xfff8a000), sound: 'note2.wav'),
    TuneModel(color: Color(0xfffEEB3B), sound: 'note3.wav'),
    TuneModel(color: Color(0xff4cbe50), sound: 'note4.wav'),
    TuneModel(color: Color(0xff1f8578), sound: 'note5.wav'),
    TuneModel(color: Color(0xff2897F3), sound: 'note6.wav'),
    TuneModel(color: Color(0xffe700f8), sound: 'note7.wav'),
  ];

  List<TuneItem> getTuneItem() {
    List<TuneItem> itemsList = [];

    for (var color in tunes) {
      itemsList.add(TuneItem(tune: color));
    }
    return itemsList;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: const Color(0xff253238),
        elevation: 0,
        title: const Text(
          'Flutter Tune',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Column(
        children: getTuneItem(),
      ),
    );
  }
}
