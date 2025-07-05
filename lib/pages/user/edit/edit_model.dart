import '/comp/nav/mobile_nav/mobile_nav_widget.dart';
import '/comp/nav/side_nav/side_nav_widget.dart';
import '/comp/nav/top_nav/top_nav_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'edit_widget.dart' show EditWidget;
import 'package:flutter/material.dart';

class EditModel extends FlutterFlowModel<EditWidget> {
  ///  Local state fields for this page.

  bool isNewImgUploaded = false;

  ///  State fields for stateful widgets in this page.

  // Model for sideNav component.
  late SideNavModel sideNavModel;
  // Model for TopNav component.
  late TopNavModel topNavModel;
  bool isDataUploading_uploadDataE06 = false;
  FFUploadedFile uploadedLocalFile_uploadDataE06 =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl_uploadDataE06 = '';

  // Model for mobileNav component.
  late MobileNavModel mobileNavModel;

  @override
  void initState(BuildContext context) {
    sideNavModel = createModel(context, () => SideNavModel());
    topNavModel = createModel(context, () => TopNavModel());
    mobileNavModel = createModel(context, () => MobileNavModel());
  }

  @override
  void dispose() {
    sideNavModel.dispose();
    topNavModel.dispose();
    mobileNavModel.dispose();
  }
}
