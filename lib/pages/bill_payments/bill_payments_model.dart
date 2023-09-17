import '../../theme/fintech_util.dart';
import '../../theme/form_field_controller.dart';
import 'package:flutter/material.dart';

class BillPaymentsModel extends FintechModel {
  ///  State fields for stateful widgets in this page.

  // State field(s) for PageView widget.
  PageController? pageViewController;
  // State field(s) for DropDown widget.
  String? dropDownValue;
  FormFieldController<String>? dropDownValueController;
  // State field(s) for TextField widget.
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  // State field(s) for PinCode widget.
  TextEditingController? pinCodeController;
  String? Function(BuildContext, String?)? pinCodeControllerValidator;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    pinCodeController = TextEditingController();
  }

  void dispose() {
    textController?.dispose();
    pinCodeController?.dispose();
  }

  /// Additional helper methods are added here.
}
