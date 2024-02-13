import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:nav/dialog/dialog.dart';

class SelectImageSourceDialog extends DialogWidget<ImageSource> {
  SelectImageSourceDialog({super.key});

  @override
  DialogState<SelectImageSourceDialog> createState() =>
      _SelectImageSourceDialogState();
}

class _SelectImageSourceDialogState
    extends DialogState<SelectImageSourceDialog> {
  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
