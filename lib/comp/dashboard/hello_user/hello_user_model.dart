import '/comp/account/profile_avatar/profile_avatar_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'hello_user_widget.dart' show HelloUserWidget;
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class HelloUserModel extends FlutterFlowModel<HelloUserWidget> {
  ///  State fields for stateful widgets in this component.

  // Model for ProfileAvatar component.
  late ProfileAvatarModel profileAvatarModel;

  @override
  void initState(BuildContext context) {
    profileAvatarModel = createModel(context, () => ProfileAvatarModel());
  }

  @override
  void dispose() {
    profileAvatarModel.dispose();
  }
}
