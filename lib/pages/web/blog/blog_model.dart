import '/backend/supabase/supabase.dart';
import '/comp/nav/web_bar/web_bar_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'blog_widget.dart' show BlogWidget;
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class BlogModel extends FlutterFlowModel<BlogWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
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
    unfocusNode.dispose();
    webBarModel.dispose();
    blogSearchFieldFocusNode?.dispose();
    blogSearchFieldTextController?.dispose();
  }
}
