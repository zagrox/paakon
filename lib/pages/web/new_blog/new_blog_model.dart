import '/auth/supabase_auth/auth_util.dart';
import '/backend/supabase/supabase.dart';
import '/comp/nav/web_bar/web_bar_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'new_blog_widget.dart' show NewBlogWidget;
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class NewBlogModel extends FlutterFlowModel<NewBlogWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for webBar component.
  late WebBarModel webBarModel;
  // State field(s) for blogSearchField widget.
  FocusNode? blogSearchFieldFocusNode;
  TextEditingController? blogSearchFieldTextController;
  String? Function(BuildContext, String?)?
      blogSearchFieldTextControllerValidator;
  // State field(s) for blogNewTitle widget.
  FocusNode? blogNewTitleFocusNode;
  TextEditingController? blogNewTitleTextController;
  String? Function(BuildContext, String?)? blogNewTitleTextControllerValidator;
  // State field(s) for blogNewHeadline widget.
  FocusNode? blogNewHeadlineFocusNode;
  TextEditingController? blogNewHeadlineTextController;
  String? Function(BuildContext, String?)?
      blogNewHeadlineTextControllerValidator;
  // State field(s) for blogNewContent widget.
  FocusNode? blogNewContentFocusNode;
  TextEditingController? blogNewContentTextController;
  String? Function(BuildContext, String?)?
      blogNewContentTextControllerValidator;

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

    blogNewTitleFocusNode?.dispose();
    blogNewTitleTextController?.dispose();

    blogNewHeadlineFocusNode?.dispose();
    blogNewHeadlineTextController?.dispose();

    blogNewContentFocusNode?.dispose();
    blogNewContentTextController?.dispose();
  }
}
