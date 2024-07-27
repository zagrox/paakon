import '/flutter_flow/flutter_flow_util.dart';
import 'tab_box_widget.dart' show TabBoxWidget;
import 'package:flutter/material.dart';

class TabBoxModel extends FlutterFlowModel<TabBoxWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for TabBar widget.
  TabController? tabBarController;
  int get tabBarCurrentIndex =>
      tabBarController != null ? tabBarController!.index : 0;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    tabBarController?.dispose();
  }
}
