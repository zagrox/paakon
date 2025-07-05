import '/comp/nav/web_bar/web_bar_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'blog_widget.dart' show BlogWidget;
import 'package:flutter/material.dart';

class BlogModel extends FlutterFlowModel<BlogWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for webBar component.
  late WebBarModel webBarModel;
  // State field(s) for blogSearchField widget.
  FocusNode? blogSearchFieldFocusNode;
  TextEditingController? blogSearchFieldTextController;
  String? Function(BuildContext, String?)?
      blogSearchFieldTextControllerValidator;

  @override
  void initState(BuildContext context) {
    webBarModel = createModel(context, () => WebBarModel());
  }

  @override
  void dispose() {
    webBarModel.dispose();
    blogSearchFieldFocusNode?.dispose();
    blogSearchFieldTextController?.dispose();
  }
}
