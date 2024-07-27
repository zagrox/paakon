import '/flutter_flow/flutter_flow_util.dart';
import 'ai_widget.dart' show AiWidget;
import 'package:flutter/material.dart';

class AiModel extends FlutterFlowModel<AiWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for chatText widget.
  FocusNode? chatTextFocusNode;
  TextEditingController? chatTextTextController;
  String? Function(BuildContext, String?)? chatTextTextControllerValidator;
  // Stores action output result for [Gemini - Generate Text] action in chatBtn widget.
  String? response;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
    chatTextFocusNode?.dispose();
    chatTextTextController?.dispose();
  }
}
