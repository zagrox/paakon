import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'package:flutter/material.dart';
import 'icons_dashboard_model.dart';
export 'icons_dashboard_model.dart';

class IconsDashboardWidget extends StatefulWidget {
  const IconsDashboardWidget({super.key});

  @override
  State<IconsDashboardWidget> createState() => _IconsDashboardWidgetState();
}

class _IconsDashboardWidgetState extends State<IconsDashboardWidget> {
  late IconsDashboardModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => IconsDashboardModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints(
        maxWidth: double.infinity,
      ),
      decoration: BoxDecoration(),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        children: [
          Expanded(
            child: InkWell(
              splashColor: Colors.transparent,
              focusColor: Colors.transparent,
              hoverColor: Colors.transparent,
              highlightColor: Colors.transparent,
              onTap: () async {
                context.pushNamed(BulkWidget.routeName);
              },
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 12.0),
                    child: Container(
                      width: double.infinity,
                      height: 85.0,
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).primaryBackground,
                        borderRadius: BorderRadius.circular(12.0),
                        border: Border.all(
                          color: FlutterFlowTheme.of(context).lineColor,
                          width: 2.0,
                        ),
                      ),
                      child: Padding(
                        padding: EdgeInsets.all(4.0),
                        child: Icon(
                          Icons.snippet_folder,
                          color: FlutterFlowTheme.of(context).customColor4,
                          size: 38.0,
                        ),
                      ),
                    ),
                  ),
                  Text(
                    'انبوه',
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'Peyda',
                          color: FlutterFlowTheme.of(context).accent2,
                          letterSpacing: 0.0,
                        ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: InkWell(
              splashColor: Colors.transparent,
              focusColor: Colors.transparent,
              hoverColor: Colors.transparent,
              highlightColor: Colors.transparent,
              onTap: () async {
                context.pushNamed(SingleWidget.routeName);
              },
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 12.0),
                    child: Container(
                      width: double.infinity,
                      height: 85.0,
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).primaryBackground,
                        borderRadius: BorderRadius.circular(12.0),
                        border: Border.all(
                          color: FlutterFlowTheme.of(context).lineColor,
                          width: 2.0,
                        ),
                      ),
                      child: Padding(
                        padding: EdgeInsets.all(4.0),
                        child: Icon(
                          Icons.folder_special,
                          color: FlutterFlowTheme.of(context).customColor4,
                          size: 38.0,
                        ),
                      ),
                    ),
                  ),
                  Text(
                    'تکی',
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'Peyda',
                          color: FlutterFlowTheme.of(context).accent2,
                          letterSpacing: 0.0,
                        ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: InkWell(
              splashColor: Colors.transparent,
              focusColor: Colors.transparent,
              hoverColor: Colors.transparent,
              highlightColor: Colors.transparent,
              onTap: () async {
                context.pushNamed(DataWidget.routeName);
              },
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 12.0),
                    child: Container(
                      width: double.infinity,
                      height: 85.0,
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).primaryBackground,
                        borderRadius: BorderRadius.circular(12.0),
                        border: Border.all(
                          color: FlutterFlowTheme.of(context).lineColor,
                          width: 1.0,
                        ),
                      ),
                      child: Padding(
                        padding: EdgeInsets.all(4.0),
                        child: Icon(
                          Icons.folder_shared,
                          color: FlutterFlowTheme.of(context).customColor4,
                          size: 38.0,
                        ),
                      ),
                    ),
                  ),
                  Text(
                    'کاوش',
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'Peyda',
                          color: FlutterFlowTheme.of(context).accent2,
                          letterSpacing: 0.0,
                        ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: InkWell(
              splashColor: Colors.transparent,
              focusColor: Colors.transparent,
              hoverColor: Colors.transparent,
              highlightColor: Colors.transparent,
              onTap: () async {
                context.pushNamed(PurchaseWidget.routeName);
              },
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 12.0),
                    child: Container(
                      width: double.infinity,
                      height: 85.0,
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).primaryBackground,
                        borderRadius: BorderRadius.circular(12.0),
                        border: Border.all(
                          color: FlutterFlowTheme.of(context).lineColor,
                          width: 1.0,
                        ),
                      ),
                      child: Padding(
                        padding: EdgeInsets.all(4.0),
                        child: Icon(
                          Icons.create_new_folder,
                          color: FlutterFlowTheme.of(context).customColor4,
                          size: 38.0,
                        ),
                      ),
                    ),
                  ),
                  Text(
                    'شارژ',
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'Peyda',
                          color: FlutterFlowTheme.of(context).accent2,
                          letterSpacing: 0.0,
                        ),
                  ),
                ],
              ),
            ),
          ),
        ].divide(SizedBox(width: 12.0)),
      ),
    );
  }
}
