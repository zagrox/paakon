import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'package:flutter/material.dart';
import 'breadcrumb_model.dart';
export 'breadcrumb_model.dart';

class BreadcrumbWidget extends StatefulWidget {
  const BreadcrumbWidget({super.key});

  @override
  State<BreadcrumbWidget> createState() => _BreadcrumbWidgetState();
}

class _BreadcrumbWidgetState extends State<BreadcrumbWidget> {
  late BreadcrumbModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => BreadcrumbModel());

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
      height: 70.0,
      constraints: BoxConstraints(
        maxWidth: 300.0,
      ),
      decoration: BoxDecoration(),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(8.0, 0.0, 8.0, 0.0),
            child: Icon(
              Icons.chevron_right_rounded,
              color: Color(0xFF57636C),
              size: 16.0,
            ),
          ),
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(8.0, 0.0, 8.0, 0.0),
            child: InkWell(
              splashColor: Colors.transparent,
              focusColor: Colors.transparent,
              hoverColor: Colors.transparent,
              highlightColor: Colors.transparent,
              onTap: () async {
                context.pushNamed(
                  HomeWidget.routeName,
                  extra: <String, dynamic>{
                    kTransitionInfoKey: TransitionInfo(
                      hasTransition: true,
                      transitionType: PageTransitionType.fade,
                      duration: Duration(milliseconds: 0),
                    ),
                  },
                );
              },
              child: Text(
                'پاکن',
                style: FlutterFlowTheme.of(context).bodyMedium.override(
                      fontFamily: 'Peyda',
                      color: FlutterFlowTheme.of(context).accent2,
                      letterSpacing: 0.0,
                    ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(8.0, 0.0, 8.0, 0.0),
            child: Icon(
              Icons.chevron_right_rounded,
              color: Color(0xFF57636C),
              size: 16.0,
            ),
          ),
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(8.0, 0.0, 8.0, 0.0),
            child: InkWell(
              splashColor: Colors.transparent,
              focusColor: Colors.transparent,
              hoverColor: Colors.transparent,
              highlightColor: Colors.transparent,
              onTap: () async {
                context.pushNamed(
                  AccountWidget.routeName,
                  extra: <String, dynamic>{
                    kTransitionInfoKey: TransitionInfo(
                      hasTransition: true,
                      transitionType: PageTransitionType.fade,
                      duration: Duration(milliseconds: 0),
                    ),
                  },
                );
              },
              child: Text(
                'ابزار',
                style: FlutterFlowTheme.of(context).bodyMedium.override(
                      fontFamily: 'Peyda',
                      color: FlutterFlowTheme.of(context).accent2,
                      letterSpacing: 0.0,
                    ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(8.0, 0.0, 8.0, 0.0),
            child: Icon(
              Icons.chevron_right_rounded,
              color: Color(0xFF57636C),
              size: 16.0,
            ),
          ),
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(8.0, 0.0, 8.0, 0.0),
            child: Text(
              'paakon://paakon.com${GoRouterState.of(context).uri.toString()}',
              style: FlutterFlowTheme.of(context).titleSmall.override(
                    fontFamily: 'Peyda',
                    color: FlutterFlowTheme.of(context).secondaryText,
                    fontSize: 16.0,
                    letterSpacing: 0.0,
                    fontWeight: FontWeight.w500,
                  ),
            ),
          ),
        ],
      ),
    );
  }
}
