import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'credit_line_model.dart';
export 'credit_line_model.dart';

class CreditLineWidget extends StatefulWidget {
  const CreditLineWidget({super.key});

  @override
  State<CreditLineWidget> createState() => _CreditLineWidgetState();
}

class _CreditLineWidgetState extends State<CreditLineWidget> {
  late CreditLineModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CreditLineModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: AlignmentDirectional(0.0, 1.0),
      child: Container(
        width: 500.0,
        height: 50.0,
        decoration: BoxDecoration(
          color: FlutterFlowTheme.of(context).secondaryBackground,
          borderRadius: BorderRadius.circular(8.0),
          border: Border.all(
            color: FlutterFlowTheme.of(context).lineColor,
          ),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Icon(
              Icons.account_balance_wallet_outlined,
              color: FlutterFlowTheme.of(context).accent3,
              size: 24.0,
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(12.0, 0.0, 0.0, 0.0),
              child: Text(
                'مانده اعتبار',
                style: FlutterFlowTheme.of(context).labelMedium.override(
                      fontFamily: 'Peyda',
                      color: FlutterFlowTheme.of(context).secondaryText,
                      letterSpacing: 0.0,
                    ),
              ),
            ),
            Flexible(
              child: Text(
                ' ۳۱۸.۲۹۵',
                textAlign: TextAlign.end,
                style: FlutterFlowTheme.of(context).bodyMedium.override(
                      fontFamily: 'Peyda',
                      fontSize: 16.0,
                      letterSpacing: 0.0,
                      fontWeight: FontWeight.bold,
                    ),
              ),
            ),
            Align(
              alignment: AlignmentDirectional(0.0, 0.0),
              child: Icon(
                Icons.add,
                color: FlutterFlowTheme.of(context).tertiary,
                size: 22.0,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
