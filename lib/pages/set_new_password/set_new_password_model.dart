import '../../theme/fintech_util.dart';
import 'package:flutter/material.dart';

class SetNewPasswordModel extends FintechModel {
  ///  State fields for stateful widgets in this page.

  // State field(s) for TextField widget.
  TextEditingController? textController1;
  late bool passwordVisibility1;
  String? Function(BuildContext, String?)? textController1Validator;
  // State field(s) for TextField widget.
  TextEditingController? textController2;
  late bool passwordVisibility2;
  String? Function(BuildContext, String?)? textController2Validator;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    passwordVisibility1 = false;
    passwordVisibility2 = false;
  }

  void dispose() {
    textController1?.dispose();
    textController2?.dispose();
  }

  /// Additional helper methods are added here.
}
