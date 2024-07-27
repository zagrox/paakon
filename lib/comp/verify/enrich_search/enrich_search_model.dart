import '/flutter_flow/flutter_flow_util.dart';
import 'enrich_search_widget.dart' show EnrichSearchWidget;
import 'package:flutter/material.dart';

class EnrichSearchModel extends FlutterFlowModel<EnrichSearchWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for EmailAddress widget.
  FocusNode? emailAddressFocusNode;
  TextEditingController? emailAddressTextController;
  String? Function(BuildContext, String?)? emailAddressTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    emailAddressFocusNode?.dispose();
    emailAddressTextController?.dispose();
  }
}
