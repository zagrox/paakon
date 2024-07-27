import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'stat_trans_model.dart';
export 'stat_trans_model.dart';

class StatTransWidget extends StatefulWidget {
  const StatTransWidget({super.key});

  @override
  State<StatTransWidget> createState() => _StatTransWidgetState();
}

class _StatTransWidgetState extends State<StatTransWidget> {
  late StatTransModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => StatTransModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      constraints: BoxConstraints(
        maxWidth: 600.0,
      ),
      decoration: BoxDecoration(),
      child: Padding(
        padding: EdgeInsetsDirectional.fromSTEB(8.0, 8.0, 8.0, 8.0),
        child: GridView(
          padding: EdgeInsets.zero,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 10.0,
            mainAxisSpacing: 10.0,
            childAspectRatio: 1.0,
          ),
          primary: false,
          shrinkWrap: true,
          scrollDirection: Axis.vertical,
          children: [
            Container(
              width: MediaQuery.sizeOf(context).width * 0.4,
              height: 160.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(24.0),
                border: Border.all(
                  color: FlutterFlowTheme.of(context).lineColor,
                ),
              ),
              child: Padding(
                padding: EdgeInsets.all(12.0),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.playlist_play,
                      color: FlutterFlowTheme.of(context).primary,
                      size: 40.0,
                    ),
                    RichText(
                      textScaler: MediaQuery.of(context).textScaler,
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: '32',
                            style: TextStyle(),
                          ),
                          TextSpan(
                            text: ' K',
                            style: FlutterFlowTheme.of(context)
                                .titleSmall
                                .override(
                                  fontFamily: 'Peyda',
                                  color: FlutterFlowTheme.of(context).accent2,
                                  letterSpacing: 0.0,
                                  useGoogleFonts: false,
                                ),
                          )
                        ],
                        style: FlutterFlowTheme.of(context).titleLarge.override(
                              fontFamily: 'Peyda',
                              color: FlutterFlowTheme.of(context).primary,
                              fontSize: 32.0,
                              letterSpacing: 0.0,
                              useGoogleFonts: false,
                            ),
                      ),
                    ),
                    Text(
                      'تعداد ایمیل',
                      textAlign: TextAlign.center,
                      style: FlutterFlowTheme.of(context).titleSmall.override(
                            fontFamily: 'Peyda',
                            letterSpacing: 0.0,
                            useGoogleFonts: false,
                          ),
                    ),
                  ].divide(SizedBox(height: 4.0)),
                ),
              ),
            ),
            Container(
              width: MediaQuery.sizeOf(context).width * 0.4,
              height: 160.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(24.0),
                border: Border.all(
                  color: FlutterFlowTheme.of(context).lineColor,
                ),
              ),
              child: Padding(
                padding: EdgeInsets.all(12.0),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.playlist_add_check,
                      color: FlutterFlowTheme.of(context).tertiary,
                      size: 40.0,
                    ),
                    RichText(
                      textScaler: MediaQuery.of(context).textScaler,
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: '18',
                            style: TextStyle(),
                          ),
                          TextSpan(
                            text: ' K',
                            style: FlutterFlowTheme.of(context)
                                .titleSmall
                                .override(
                                  fontFamily: 'Peyda',
                                  color: FlutterFlowTheme.of(context).accent2,
                                  letterSpacing: 0.0,
                                  useGoogleFonts: false,
                                ),
                          )
                        ],
                        style: FlutterFlowTheme.of(context).titleLarge.override(
                              fontFamily: 'Peyda',
                              color: FlutterFlowTheme.of(context).tertiary,
                              fontSize: 32.0,
                              letterSpacing: 0.0,
                              useGoogleFonts: false,
                            ),
                      ),
                    ),
                    Text(
                      'ایمیل پاک',
                      textAlign: TextAlign.center,
                      style: FlutterFlowTheme.of(context).titleSmall.override(
                            fontFamily: 'Peyda',
                            letterSpacing: 0.0,
                            useGoogleFonts: false,
                          ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              width: MediaQuery.sizeOf(context).width * 0.4,
              height: 160.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(24.0),
                border: Border.all(
                  color: FlutterFlowTheme.of(context).lineColor,
                ),
              ),
              child: Padding(
                padding: EdgeInsets.all(12.0),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.manage_search,
                      color: FlutterFlowTheme.of(context).accent2,
                      size: 40.0,
                    ),
                    RichText(
                      textScaler: MediaQuery.of(context).textScaler,
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: '12',
                            style: TextStyle(),
                          ),
                          TextSpan(
                            text: ' K',
                            style: FlutterFlowTheme.of(context)
                                .titleSmall
                                .override(
                                  fontFamily: 'Peyda',
                                  color: FlutterFlowTheme.of(context).accent2,
                                  letterSpacing: 0.0,
                                  useGoogleFonts: false,
                                ),
                          )
                        ],
                        style: FlutterFlowTheme.of(context).titleLarge.override(
                              fontFamily: 'Peyda',
                              color: FlutterFlowTheme.of(context).accent2,
                              fontSize: 32.0,
                              letterSpacing: 0.0,
                              useGoogleFonts: false,
                            ),
                      ),
                    ),
                    Text(
                      'کاوش ایمیل',
                      textAlign: TextAlign.center,
                      style: FlutterFlowTheme.of(context).titleSmall.override(
                            fontFamily: 'Peyda',
                            letterSpacing: 0.0,
                            useGoogleFonts: false,
                          ),
                    ),
                  ].divide(SizedBox(height: 4.0)),
                ),
              ),
            ),
            Container(
              width: MediaQuery.sizeOf(context).width * 0.4,
              height: 160.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(24.0),
                border: Border.all(
                  color: FlutterFlowTheme.of(context).lineColor,
                ),
              ),
              child: Padding(
                padding: EdgeInsets.all(12.0),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.playlist_remove_sharp,
                      color: FlutterFlowTheme.of(context).secondary,
                      size: 40.0,
                    ),
                    RichText(
                      textScaler: MediaQuery.of(context).textScaler,
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: '2.5',
                            style: TextStyle(),
                          ),
                          TextSpan(
                            text: ' K',
                            style: FlutterFlowTheme.of(context)
                                .titleSmall
                                .override(
                                  fontFamily: 'Peyda',
                                  color: FlutterFlowTheme.of(context).accent2,
                                  letterSpacing: 0.0,
                                  useGoogleFonts: false,
                                ),
                          )
                        ],
                        style: FlutterFlowTheme.of(context).titleLarge.override(
                              fontFamily: 'Peyda',
                              color: FlutterFlowTheme.of(context).secondary,
                              fontSize: 32.0,
                              letterSpacing: 0.0,
                              useGoogleFonts: false,
                            ),
                      ),
                    ),
                    Text(
                      'ایمیل آلوده',
                      textAlign: TextAlign.center,
                      style: FlutterFlowTheme.of(context).titleSmall.override(
                            fontFamily: 'Peyda',
                            letterSpacing: 0.0,
                            useGoogleFonts: false,
                          ),
                    ),
                  ].divide(SizedBox(height: 4.0)),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
