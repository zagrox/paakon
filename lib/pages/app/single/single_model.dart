import '/comp/nav/mobile_nav/mobile_nav_widget.dart';
import '/comp/nav/side_nav/side_nav_widget.dart';
import '/comp/nav/top_nav/top_nav_widget.dart';
import '/comp/verify/single_search/single_search_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'single_widget.dart' show SingleWidget;
import 'package:flutter/material.dart';

class SingleModel extends FlutterFlowModel<SingleWidget> {
  ///  Local state fields for this page.

  int? selectedPage = 3;

  ///  State fields for stateful widgets in this page.

  // Model for sideNav component.
  late SideNavModel sideNavModel;
  // Model for TopNav component.
  late TopNavModel topNavModel;
  // Model for SingleSearch component.
  late SingleSearchModel singleSearchModel;
  // Model for mobileNav component.
  late MobileNavModel mobileNavModel;

  @override
  void initState(BuildContext context) {
    sideNavModel = createModel(context, () => SideNavModel());
    topNavModel = createModel(context, () => TopNavModel());
    singleSearchModel = createModel(context, () => SingleSearchModel());
    mobileNavModel = createModel(context, () => MobileNavModel());
  }

  @override
  void dispose() {
    sideNavModel.dispose();
    topNavModel.dispose();
    singleSearchModel.dispose();
    mobileNavModel.dispose();
  }
}
