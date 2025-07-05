import '/flutter_flow/flutter_flow_util.dart';
import 'on_boarding_widget.dart' show OnBoardingWidget;
import 'package:flutter/material.dart';

class OnBoardingModel extends FlutterFlowModel<OnBoardingWidget> {
  ///  Local state fields for this page.

  bool isNewImgUploaded = false;

  ///  State fields for stateful widgets in this page.

  bool isDataUploading_uploadDataE05 = false;
  FFUploadedFile uploadedLocalFile_uploadDataE05 =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl_uploadDataE05 = '';

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
