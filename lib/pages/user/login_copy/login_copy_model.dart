import '/auth/supabase_auth/auth_util.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'login_copy_widget.dart' show LoginCopyWidget;
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class LoginCopyModel extends FlutterFlowModel<LoginCopyWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
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
    unfocusNode.dispose();
    userEmailAddressFocusNode?.dispose();
    userEmailAddressTextController?.dispose();

    userPasswordFocusNode?.dispose();
    userPasswordTextController?.dispose();
  }
}
