import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class TextControllerNotifier extends StateNotifier<TextEditingController> {
  TextControllerNotifier() : super(TextEditingController());

  void setText(String text) {
    state.text = text;
  }

  void setTextFromOption(String content) {
    if (content.isNotEmpty) {
      state.text = content;
    }
  }

  @override
  void dispose() {
    state.dispose();
    super.dispose();
  }
}

final textControllerProvider =
  StateNotifierProvider<TextControllerNotifier, TextEditingController>((ref) {
    return TextControllerNotifier();
});
