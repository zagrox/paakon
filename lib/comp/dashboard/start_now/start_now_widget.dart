import '/comp/account/select_box/select_box_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:webviewx_plus/webviewx_plus.dart';
import 'start_now_model.dart';
export 'start_now_model.dart';

class StartNowWidget extends StatefulWidget {
  const StartNowWidget({super.key});

  @override
  State<StartNowWidget> createState() => _StartNowWidgetState();
}

class _StartNowWidgetState extends State<StartNowWidget> {
  late StartNowModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => StartNowModel());

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
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            FlutterFlowTheme.of(context).secondary,
            FlutterFlowTheme.of(context).accent1
          ],
          stops: const [0.0, 1.0],
          begin: const AlignmentDirectional(1.0, 0.0),
          end: const AlignmentDirectional(-1.0, 0),
        ),
        borderRadius: BorderRadius.circular(12.0),
        border: Border.all(
          color: FlutterFlowTheme.of(context).lineColor,
          width: 1.0,
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(12.0, 0.0, 12.0, 0.0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        'انتخاب فایل لیست ایمیل ها',
                        style: FlutterFlowTheme.of(context).bodySmall.override(
                              fontFamily: 'Peyda',
                              color: FlutterFlowTheme.of(context).primaryText,
                              letterSpacing: 0.0,
                              useGoogleFonts: false,
                            ),
                      ),
                    ),
                  ),
                  InkWell(
                    splashColor: Colors.transparent,
                    focusColor: Colors.transparent,
                    hoverColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                    onTap: () async {
                      context.pushNamed('help');
                    },
                    child: Text(
                      'راهنمای کار',
                      textAlign: TextAlign.center,
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'Peyda',
                            color: FlutterFlowTheme.of(context).primaryBtnText,
                            letterSpacing: 0.0,
                            useGoogleFonts: false,
                          ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsetsDirectional.fromSTEB(4.0, 0.0, 4.0, 0.0),
                    child: Icon(
                      Icons.play_arrow_rounded,
                      color: FlutterFlowTheme.of(context).primaryText,
                      size: 24.0,
                    ),
                  ),
                ],
              ),
            ),
            Divider(
              height: 30.0,
              thickness: 2.0,
              indent: 10.0,
              endIndent: 10.0,
              color: FlutterFlowTheme.of(context).alternate,
            ),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Expanded(
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Container(
                          width: 48.0,
                          height: 48.0,
                          decoration: BoxDecoration(
                            color: FlutterFlowTheme.of(context)
                                .secondaryBackground,
                            shape: BoxShape.circle,
                            border: Border.all(
                              color: FlutterFlowTheme.of(context)
                                  .primaryBackground,
                              width: 2.0,
                            ),
                          ),
                          child: Icon(
                            Icons.file_open_outlined,
                            color: FlutterFlowTheme.of(context).customColor2,
                            size: 24.0,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              0.0, 8.0, 0.0, 0.0),
                          child: Text(
                            'انتخاب فایل',
                            style: FlutterFlowTheme.of(context)
                                .labelSmall
                                .override(
                                  fontFamily: 'Peyda',
                                  color: FlutterFlowTheme.of(context)
                                      .primaryBtnText,
                                  fontSize: 12.0,
                                  letterSpacing: 0.0,
                                  fontWeight: FontWeight.w500,
                                  useGoogleFonts: false,
                                ),
                          ),
                        ),
                        Text(
                          'ایمیل آلوده',
                          textAlign: TextAlign.center,
                          style:
                              FlutterFlowTheme.of(context).titleMedium.override(
                                    fontFamily: 'Peyda',
                                    letterSpacing: 0.0,
                                    useGoogleFonts: false,
                                  ),
                        ),
                      ].divide(const SizedBox(height: 4.0)),
                    ),
                  ),
                  Expanded(
                    child: Stack(
                      alignment: const AlignmentDirectional(0.0, 0.0),
                      children: [
                        Align(
                          alignment: const AlignmentDirectional(0.0, 0.0),
                          child: Container(
                            width: 120.0,
                            height: 6.0,
                            decoration: BoxDecoration(
                              gradient: LinearGradient(
                                colors: [
                                  FlutterFlowTheme.of(context).primary,
                                  FlutterFlowTheme.of(context).accent3
                                ],
                                stops: const [0.0, 1.0],
                                begin: const AlignmentDirectional(1.0, 0.0),
                                end: const AlignmentDirectional(-1.0, 0),
                              ),
                              borderRadius: BorderRadius.circular(4.0),
                            ),
                          ),
                        ),
                        Container(
                          width: 40.0,
                          height: 40.0,
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                              colors: [
                                FlutterFlowTheme.of(context).primary,
                                FlutterFlowTheme.of(context).accent3
                              ],
                              stops: const [0.0, 1.0],
                              begin: const AlignmentDirectional(1.0, 0.0),
                              end: const AlignmentDirectional(-1.0, 0),
                            ),
                            shape: BoxShape.circle,
                          ),
                          alignment: const AlignmentDirectional(0.0, 0.0),
                          child: Icon(
                            Icons.keyboard_double_arrow_left_rounded,
                            color: FlutterFlowTheme.of(context).primaryBtnText,
                            size: 30.0,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Container(
                          width: 48.0,
                          height: 48.0,
                          decoration: BoxDecoration(
                            color: FlutterFlowTheme.of(context)
                                .secondaryBackground,
                            shape: BoxShape.circle,
                            border: Border.all(
                              color: FlutterFlowTheme.of(context)
                                  .primaryBackground,
                            ),
                          ),
                          child: Icon(
                            Icons.addchart_rounded,
                            color: FlutterFlowTheme.of(context).secondary,
                            size: 24.0,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              0.0, 8.0, 0.0, 0.0),
                          child: Text(
                            'دریافت گزارش',
                            style: FlutterFlowTheme.of(context)
                                .labelSmall
                                .override(
                                  fontFamily: 'Peyda',
                                  color: FlutterFlowTheme.of(context)
                                      .primaryBtnText,
                                  fontSize: 12.0,
                                  letterSpacing: 0.0,
                                  fontWeight: FontWeight.w500,
                                  useGoogleFonts: false,
                                ),
                          ),
                        ),
                        Text(
                          'ایمیل پاک',
                          textAlign: TextAlign.center,
                          style:
                              FlutterFlowTheme.of(context).titleMedium.override(
                                    fontFamily: 'Peyda',
                                    letterSpacing: 0.0,
                                    useGoogleFonts: false,
                                  ),
                        ),
                      ].divide(const SizedBox(height: 4.0)),
                    ),
                  ),
                ].divide(const SizedBox(width: 16.0)),
              ),
            ),
            Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(0.0, 14.0, 0.0, 0.0),
              child: FFButtonWidget(
                onPressed: () async {
                  await showModalBottomSheet(
                    isScrollControlled: true,
                    backgroundColor: Colors.transparent,
                    enableDrag: false,
                    context: context,
                    builder: (context) {
                      return WebViewAware(
                        child: Padding(
                          padding: MediaQuery.viewInsetsOf(context),
                          child: const SizedBox(
                            height: 300.0,
                            child: SelectBoxWidget(),
                          ),
                        ),
                      );
                    },
                  ).then((value) => safeSetState(() {}));
                },
                text: 'شروع',
                options: FFButtonOptions(
                  width: 150.0,
                  height: 48.0,
                  padding: const EdgeInsetsDirectional.fromSTEB(34.0, 0.0, 34.0, 0.0),
                  iconPadding:
                      const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                  color: FlutterFlowTheme.of(context).primaryBackground,
                  textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                        fontFamily: 'Peyda',
                        color: FlutterFlowTheme.of(context).primaryText,
                        fontSize: 16.0,
                        letterSpacing: 0.0,
                        fontWeight: FontWeight.bold,
                        useGoogleFonts: false,
                      ),
                  elevation: 0.0,
                  borderRadius: BorderRadius.circular(8.0),
                  hoverColor: FlutterFlowTheme.of(context).primaryText,
                  hoverTextColor:
                      FlutterFlowTheme.of(context).primaryBackground,
                  hoverElevation: 0.0,
                ),
              ),
            ),
            FFButtonWidget(
              onPressed: () async {
                context.pushNamed('purchase');
              },
              text: 'جدول تعرفه',
              options: FFButtonOptions(
                height: 44.0,
                padding: const EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 24.0, 0.0),
                iconPadding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                color: Colors.transparent,
                textStyle: FlutterFlowTheme.of(context).bodyMedium.override(
                      fontFamily: 'Peyda',
                      color: FlutterFlowTheme.of(context).accent4,
                      fontSize: 14.0,
                      letterSpacing: 0.0,
                      fontWeight: FontWeight.w500,
                      decoration: TextDecoration.underline,
                      useGoogleFonts: false,
                    ),
                elevation: 0.0,
                borderRadius: BorderRadius.circular(12.0),
                hoverTextColor: FlutterFlowTheme.of(context).primaryBackground,
              ),
            ),
          ].divide(const SizedBox(height: 4.0)).addToEnd(const SizedBox(height: 12.0)),
        ),
      ),
    );
  }
}
