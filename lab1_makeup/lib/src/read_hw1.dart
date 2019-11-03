import 'dart:core' as prefix0;
import 'dart:core';
import 'dart:io';
import 'dart:convert';
import 'dart:async';

main(List<String> args) {
  final hw1 = File('hw1.txt');
  Stream<List<int>> inputStream = hw1.openRead();

  inputStream
    .transform(utf8.decoder)    //decode bytes to UTF-8
    .transform(LineSplitter())  //Convert stream to individual lines.
    .listen((String line) {     //Process results
      print(line.contains(RegExp(r'[0-9]'))); //Checks to see if String contains numeric values
      print("$line");       
    },


    onDone: () {print('File is now closed.');},
    onError: (e) {print(e.toString()); });
  
}