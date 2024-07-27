import '/comp/nav/mobile_nav/mobile_nav_widget.dart';
import '/comp/nav/side_nav/side_nav_widget.dart';
import '/comp/nav/top_nav/top_nav_widget.dart';
import '/comp/verify/enrich_search/enrich_search_widget.dart';
import '/comp/verify/table_enrich_results/table_enrich_results_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'data_widget.dart' show DataWidget;
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class DataModel extends FlutterFlowModel<DataWidget> {
  ///  Local state fields for this page.

  int? selectedPage = 4;

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for sideNav component.
  late SideNavModel sideNavModel;
  // Model for TopNav component.
  late TopNavModel topNavModel;
  // Model for EnrichSearch component.
  late EnrichSearchModel enrichSearchModel;
  // Model for TableEnrichResults component.
  late TableEnrichResultsModel tableEnrichResultsModel;
  // Model for mobileNav component.
  late MobileNavModel mobileNavModel;

  @override
  void initState(BuildContext context) {
    sideNavModel = createModel(context, () => SideNavModel());
    topNavModel = createModel(context, () => TopNavModel());
    enrichSearchModel = createModel(context, () => EnrichSearchModel());
    tableEnrichResultsModel =
        createModel(context, () => TableEnrichResultsModel());
    mobileNavModel = createModel(context, () => MobileNavModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    sideNavModel.dispose();
    topNavModel.dispose();
    enrichSearchModel.dispose();
    tableEnrichResultsModel.dispose();
    mobileNavModel.dispose();
  }
}
