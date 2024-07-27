import '/comp/account/info_credit/info_credit_widget.dart';
import '/comp/account/orders_table/orders_table_widget.dart';
import '/comp/nav/mobile_nav/mobile_nav_widget.dart';
import '/comp/nav/side_nav/side_nav_widget.dart';
import '/comp/nav/top_nav/top_nav_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'history_widget.dart' show HistoryWidget;
import 'package:flutter/material.dart';

class HistoryModel extends FlutterFlowModel<HistoryWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for sideNav component.
  late SideNavModel sideNavModel;
  // Model for TopNav component.
  late TopNavModel topNavModel;
  // Model for infoCredit component.
  late InfoCreditModel infoCreditModel;
  // Model for ordersTable component.
  late OrdersTableModel ordersTableModel;
  // Model for mobileNav component.
  late MobileNavModel mobileNavModel;

  @override
  void initState(BuildContext context) {
    sideNavModel = createModel(context, () => SideNavModel());
    topNavModel = createModel(context, () => TopNavModel());
    infoCreditModel = createModel(context, () => InfoCreditModel());
    ordersTableModel = createModel(context, () => OrdersTableModel());
    mobileNavModel = createModel(context, () => MobileNavModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    sideNavModel.dispose();
    topNavModel.dispose();
    infoCreditModel.dispose();
    ordersTableModel.dispose();
    mobileNavModel.dispose();
  }
}
