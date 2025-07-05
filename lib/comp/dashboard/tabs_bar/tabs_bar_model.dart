import '/flutter_flow/flutter_flow_util.dart';
import 'tabs_bar_widget.dart' show TabsBarWidget;
import 'package:flutter/material.dart';

class TabsBarModel extends FlutterFlowModel<TabsBarWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for TabBar widget.
  TabController? tabBarController;
  int get tabBarCurrentIndex =>
      tabBarController != null ? tabBarController!.index : 0;
  int get tabBarPreviousIndex =>
      tabBarController != null ? tabBarController!.previousIndex : 0;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    tabBarController?.dispose();
  }
}
