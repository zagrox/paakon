import '/auth/supabase_auth/auth_util.dart';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'info_credit_model.dart';
export 'info_credit_model.dart';

class InfoCreditWidget extends StatefulWidget {
  const InfoCreditWidget({super.key});

  @override
  State<InfoCreditWidget> createState() => _InfoCreditWidgetState();
}

class _InfoCreditWidgetState extends State<InfoCreditWidget> {
  late InfoCreditModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => InfoCreditModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(4.0),
      child: Container(
        constraints: BoxConstraints(
          minWidth: 370.0,
          maxHeight: 190.0,
        ),
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              blurRadius: 6.0,
              color: Color(0x4B1A1F24),
              offset: Offset(
                0.0,
                2.0,
              ),
            )
          ],
          gradient: LinearGradient(
            colors: [
              FlutterFlowTheme.of(context).tertiary,
              FlutterFlowTheme.of(context).primary
            ],
            stops: [0.0, 1.0],
            begin: AlignmentDirectional(0.94, -1.0),
            end: AlignmentDirectional(-0.94, 1.0),
          ),
          borderRadius: BorderRadius.circular(8.0),
        ),
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset(
                'assets/images/paakon-logo-white.png',
                width: 44.0,
                height: 44.0,
                fit: BoxFit.cover,
              ),
              Text(
                'اعتبار پاکن شما:',
                style: FlutterFlowTheme.of(context).bodyMedium.override(
                      fontFamily: 'Peyda',
                      color: Colors.white,
                      letterSpacing: 0.0,
                    ),
              ),
              FutureBuilder<List<StatsRow>>(
                future: FFAppState().userStat(
                  requestFn: () => StatsTable().querySingleRow(
                    queryFn: (q) => q.eqOrNull(
                      'user',
                      currentUserUid,
                    ),
                  ),
                ),
                builder: (context, snapshot) {
                  // Customize what your widget looks like when it's loading.
                  if (!snapshot.hasData) {
                    return Center(
                      child: SizedBox(
                        width: 50.0,
                        height: 50.0,
                        child: SpinKitDoubleBounce(
                          color: FlutterFlowTheme.of(context).primary,
                          size: 50.0,
                        ),
                      ),
                    );
                  }
                  List<StatsRow> textStatsRowList = snapshot.data!;

                  final textStatsRow = textStatsRowList.isNotEmpty
                      ? textStatsRowList.first
                      : null;

                  return Text(
                    valueOrDefault<String>(
                      textStatsRow?.currentCredit?.toString(),
                      '0',
                    ),
                    style: FlutterFlowTheme.of(context).displaySmall.override(
                          fontFamily: 'Peyda',
                          color: Colors.white,
                          fontSize: 32.0,
                          letterSpacing: 0.0,
                        ),
                  );
                },
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0.0, 12.0, 0.0, 4.0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'نام کامل کاربر',
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'Peyda',
                            color: Colors.white,
                            letterSpacing: 0.0,
                          ),
                    ),
                    Text(
                      'بدون انقضا',
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'Peyda',
                            color: Colors.white,
                            letterSpacing: 0.0,
                          ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
