import 'package:flutter/material.dart';

class PPEStepInfo {
  final String image;
  final String text;
  final List<String> notes;

  const PPEStepInfo({
    @required this.image,
    @required this.text,
    @required this.notes,
  });
}

class PPEStepInfoCardModel extends PPEStepInfo {
  int step;

  PPEStepInfoCardModel(
      {String image, String text, List<String> notes, this.step})
      : super(image: image, text: text, notes: notes);
}
