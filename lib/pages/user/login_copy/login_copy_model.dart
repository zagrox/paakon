import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'login_copy_widget.dart' show LoginCopyWidget;
import 'package:flutter/material.dart';

class LoginCopyModel extends FlutterFlowModel<LoginCopyWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for userEmailAddress widget.
  FocusNode? userEmailAddressFocusNode;
  TextEditingController? userEmailAddressTextController;
  String? Function(BuildContext, String?)?
      userEmailAddressTextControllerValidator;
  // State field(s) for userPassword widget.
  FocusNode? userPasswordFocusNode;
  TextEditingController? userPasswordTextController;
  late bool userPasswordVisibility;
  String? Function(BuildContext, String?)? userPasswordTextControllerValidator;
  // State field(s) for Checkbox widget.
  bool? checkboxValue;

  @override
  void initState(BuildContext context) {
    userPasswordVisibility = false;
  }

  @override
  void dispose() {
    userEmailAddressFocusNode?.dispose();
    userEmailAddressTextController?.dispose();

    userPasswordFocusNode?.dispose();
    userPasswordTextController?.dispose();
  }
}
