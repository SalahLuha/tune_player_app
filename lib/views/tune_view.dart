import 'package:flutter/material.dart';
import 'package:music_notes_player_app_setup/widgets/tune_item.dart';

class TuneView extends StatelessWidget {
  const TuneView({super.key});
  final List<Color> tuneColors = const [
    Color(0xffF44336),
    Color(0xfff8a000),
    Color(0xfffEEB3B),
    Color(0xff4cbe50),
    Color(0xff1f8578),
    Color(0xff2897F3),
    Color(0xffe700f8),
  ];

  List <TuneItem> getTuneItem(){
    List<TuneItem> itemsList = [];

    for (var color in tuneColors){
      itemsList.add(TuneItem(color: color));
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
      body:  Column(
        children: getTuneItem(),

      ),
    );
  }

}
