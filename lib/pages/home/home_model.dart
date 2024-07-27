import '/comp/dashboard/start_now/start_now_widget.dart';
import '/comp/nav/mobile_nav/mobile_nav_widget.dart';
import '/comp/nav/web_bar/web_bar_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'home_widget.dart' show HomeWidget;
import 'package:flutter/material.dart';

class HomeModel extends FlutterFlowModel<HomeWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for webBar component.
  late WebBarModel webBarModel;
  // Model for StartNow component.
  late StartNowModel startNowModel;
  // Model for mobileNav component.
  late MobileNavModel mobileNavModel;

  @override
  void initState(BuildContext context) {
    webBarModel = createModel(context, () => WebBarModel());
    startNowModel = createModel(context, () => StartNowModel());
    mobileNavModel = createModel(context, () => MobileNavModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    webBarModel.dispose();
    startNowModel.dispose();
    mobileNavModel.dispose();
  }
}
