import '/comp/account/profile_avatar/profile_avatar_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'hello_user_widget.dart' show HelloUserWidget;
import 'package:flutter/material.dart';

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
