import 'package:flutter/material.dart';
import 'package:soundpool/soundpool.dart'; //https://pub.dev/packages/soundpool/example
import 'package:flutter/services.dart';

class XylophoneScreen extends StatelessWidget {

  XylophoneScreen({Key? key}) : super(key: key);

  Soundpool pool = Soundpool(streamType: StreamType.notification);

  void playsound({required note}) async{
    int soundId = await rootBundle.load( note ).then((ByteData soundData) {
      return pool.load(soundData);
    });
    int streamId = await pool.play(soundId);
  }

  @override
  Widget build(BuildContext context) {
    List notes = [
      'assets/audio/1.wav',
      'assets/audio/2.wav',
      'assets/audio/3.wav',
      'assets/audio/4.wav',
      'assets/audio/5.wav',
      'assets/audio/6.wav',
      'assets/audio/7.wav',
      'assets/audio/8.wav'
    ];
    return Scaffold(
      body:
      Column(
      children:[
        InkWell(
          onTap: () {
            playsound(note:notes[0]);
          },
          child:Ink(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height / 8,
              color: Colors.red
          ),
        ),
        InkWell(
          onTap: () {
            playsound(note:notes[1]);
          },
          child:Ink(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height / 8,
              color: Colors.orange
          ),
        ),
        InkWell(
          onTap: () {
            playsound(note:notes[2]);
          },
          child:Ink(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height / 8,
              color: Colors.yellow
          ),
        ),
        InkWell(
          onTap: () {
            playsound(note:notes[3]);
          },
          child:Ink(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height / 8,
              color: Colors.green
          ),
        ),
        InkWell(
          onTap: () {
            playsound(note:notes[4]);
          },
          child:Ink(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height / 8,
              color: Colors.teal
          ),
        ),
        InkWell(
          onTap: () {
            playsound(note:notes[5]);
          },
          child:Ink(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height / 8,
              color: Colors.blue
          ),
        ),
        InkWell(
          onTap: () {
            playsound(note:notes[6]);
          },
          child:Ink(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height / 8,
              color: Colors.purple
          ),
        ),
        InkWell(
          onTap: () {
            playsound(note:notes[7]);
          },
          child:Ink(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height / 8,
              color: Colors.grey
          ),
        ),


      ])
    );
  }
}