import 'package:daangn_ui/common/common.dart';
import 'package:flutter/material.dart';

import '../../constant/default_font.dart';

extension VxTextBuilderExtension on VxTextBuilder {
  Widget makeWithDefaultFont({Key? key}) {
    return textStyle(defaultFontStyle()).make();
  }
}

extension VxSelectableTextBuilderExtension on VxSelectableTextBuilder {
  Widget makeWithDefaultFont({Key? key}) {
    return textStyle(defaultFontStyle()).make();
  }
}
