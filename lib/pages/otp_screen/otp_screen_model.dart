import '../../theme/fintech_util.dart';
import 'package:flutter/material.dart';

class OtpScreenModel extends FintechModel {
  ///  State fields for stateful widgets in this page.

  // State field(s) for PinCode widget.
  TextEditingController? pinCodeController;
  String? Function(BuildContext, String?)? pinCodeControllerValidator;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    pinCodeController = TextEditingController();
  }

  void dispose() {
    pinCodeController?.dispose();
  }

  /// Additional helper methods are added here.
}
