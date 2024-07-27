import '/comp/account/profile_avatar/profile_avatar_widget.dart';
import '/comp/general/breadcrumb/breadcrumb_widget.dart';
import '/comp/general/mode/mode_widget.dart';
import '/comp/general/remain_credits/remain_credits_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'top_bar_widget.dart' show TopBarWidget;
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class TopBarModel extends FlutterFlowModel<TopBarWidget> {
  ///  State fields for stateful widgets in this component.

  // Model for Breadcrumb component.
  late BreadcrumbModel breadcrumbModel;
  // Model for Mode component.
  late ModeModel modeModel;
  // Model for ProfileAvatar component.
  late ProfileAvatarModel profileAvatarModel;
  // Model for RemainCredits component.
  late RemainCreditsModel remainCreditsModel;

  @override
  void initState(BuildContext context) {
    breadcrumbModel = createModel(context, () => BreadcrumbModel());
    modeModel = createModel(context, () => ModeModel());
    profileAvatarModel = createModel(context, () => ProfileAvatarModel());
    remainCreditsModel = createModel(context, () => RemainCreditsModel());
  }

  @override
  void dispose() {
    breadcrumbModel.dispose();
    modeModel.dispose();
    profileAvatarModel.dispose();
    remainCreditsModel.dispose();
  }
}
