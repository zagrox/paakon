import '/flutter_flow/flutter_flow_util.dart';
import 'select_box_widget.dart' show SelectBoxWidget;
import 'package:flutter/material.dart';

class SelectBoxModel extends FlutterFlowModel<SelectBoxWidget> {
  ///  State fields for stateful widgets in this component.

  bool isDataUploading = false;
  FFUploadedFile uploadedLocalFile =
      FFUploadedFile(bytes: Uint8List.fromList([]));

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
