import '/comp/dashboard/folders/folders_widget.dart';
import '/comp/dashboard/icons_dashboard/icons_dashboard_widget.dart';
import '/comp/dashboard/start_now/start_now_widget.dart';
import '/comp/general/contact/contact_widget.dart';
import '/comp/nav/mobile_nav/mobile_nav_widget.dart';
import '/comp/nav/side_nav/side_nav_widget.dart';
import '/comp/nav/top_nav/top_nav_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'account_widget.dart' show AccountWidget;
import 'package:flutter/material.dart';

class AccountModel extends FlutterFlowModel<AccountWidget> {
  ///  Local state fields for this page.

  int? selectedPage = 1;

  bool isLoading = false;

  ///  State fields for stateful widgets in this page.

  // Model for sideNav component.
  late SideNavModel sideNavModel;
  // Model for TopNav component.
  late TopNavModel topNavModel;
  // Model for iconsDashboard component.
  late IconsDashboardModel iconsDashboardModel;
  // Model for Folders component.
  late FoldersModel foldersModel;
  // Model for StartNow component.
  late StartNowModel startNowModel;
  // Model for contact component.
  late ContactModel contactModel;
  // Model for mobileNav component.
  late MobileNavModel mobileNavModel;

  @override
  void initState(BuildContext context) {
    sideNavModel = createModel(context, () => SideNavModel());
    topNavModel = createModel(context, () => TopNavModel());
    iconsDashboardModel = createModel(context, () => IconsDashboardModel());
    foldersModel = createModel(context, () => FoldersModel());
    startNowModel = createModel(context, () => StartNowModel());
    contactModel = createModel(context, () => ContactModel());
    mobileNavModel = createModel(context, () => MobileNavModel());
  }

  @override
  void dispose() {
    sideNavModel.dispose();
    topNavModel.dispose();
    iconsDashboardModel.dispose();
    foldersModel.dispose();
    startNowModel.dispose();
    contactModel.dispose();
    mobileNavModel.dispose();
  }
}
