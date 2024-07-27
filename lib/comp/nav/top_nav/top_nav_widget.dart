import '/auth/supabase_auth/auth_util.dart';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:badges/badges.dart' as badges;
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'top_nav_model.dart';
export 'top_nav_model.dart';

class TopNavWidget extends StatefulWidget {
  const TopNavWidget({super.key});

  @override
  State<TopNavWidget> createState() => _TopNavWidgetState();
}

class _TopNavWidgetState extends State<TopNavWidget> {
  late TopNavModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => TopNavModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<StatsRow>>(
      future: FFAppState().userStat(
        requestFn: () => StatsTable().querySingleRow(
          queryFn: (q) => q.eq(
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
        List<StatsRow> userTopBarStatsRowList = snapshot.data!;

        final userTopBarStatsRow = userTopBarStatsRowList.isNotEmpty
            ? userTopBarStatsRowList.first
            : null;

        return Container(
          height: 80.0,
          decoration: BoxDecoration(),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              if (responsiveVisibility(
                context: context,
                tabletLandscape: false,
                desktop: false,
              ))
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
                  child: InkWell(
                    splashColor: Colors.transparent,
                    focusColor: Colors.transparent,
                    hoverColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                    onTap: () async {
                      context.pushNamed(
                        'Account',
                        extra: <String, dynamic>{
                          kTransitionInfoKey: TransitionInfo(
                            hasTransition: true,
                            transitionType: PageTransitionType.fade,
                            duration: Duration(milliseconds: 0),
                          ),
                        },
                      );
                    },
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(8.0),
                      child: Image.asset(
                        Theme.of(context).brightness == Brightness.dark
                            ? 'assets/images/paakon-logo-white.png'
                            : 'assets/images/Paakon_logo_icon_blue.png',
                        width: 40.0,
                        height: 40.0,
                        fit: BoxFit.cover,
                      ),
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
                    context.pushNamed(
                      'history',
                      extra: <String, dynamic>{
                        kTransitionInfoKey: TransitionInfo(
                          hasTransition: true,
                          transitionType: PageTransitionType.fade,
                          duration: Duration(milliseconds: 0),
                        ),
                      },
                    );
                  },
                  child: RichText(
                    textScaler: MediaQuery.of(context).textScaler,
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: 'اعتبار  ',
                          style:
                              FlutterFlowTheme.of(context).labelSmall.override(
                                    fontFamily: 'Peyda',
                                    color: FlutterFlowTheme.of(context).accent3,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.normal,
                                    useGoogleFonts: false,
                                  ),
                        ),
                        TextSpan(
                          text: valueOrDefault<String>(
                            userTopBarStatsRow?.currentCredit?.toString(),
                            '0',
                          ),
                          style: TextStyle(),
                        )
                      ],
                      style: FlutterFlowTheme.of(context).labelSmall.override(
                            fontFamily: 'Peyda',
                            color: FlutterFlowTheme.of(context).primary,
                            letterSpacing: 0.0,
                            useGoogleFonts: false,
                          ),
                    ),
                    textAlign: TextAlign.end,
                  ),
                ),
              ),
              if (responsiveVisibility(
                context: context,
                phone: false,
                tablet: false,
              ))
                FlutterFlowIconButton(
                  borderColor: Colors.transparent,
                  borderRadius: 30.0,
                  buttonSize: 48.0,
                  hoverColor: FlutterFlowTheme.of(context).primaryBackground,
                  hoverIconColor: FlutterFlowTheme.of(context).primary,
                  icon: Icon(
                    Icons.add_circle,
                    color: FlutterFlowTheme.of(context).accent3,
                    size: 24.0,
                  ),
                  onPressed: () async {
                    context.pushNamed(
                      'purchase',
                      extra: <String, dynamic>{
                        kTransitionInfoKey: TransitionInfo(
                          hasTransition: true,
                          transitionType: PageTransitionType.fade,
                          duration: Duration(milliseconds: 0),
                        ),
                      },
                    );
                  },
                ),
              if (responsiveVisibility(
                context: context,
                phone: false,
              ))
                FlutterFlowIconButton(
                  borderColor: Colors.transparent,
                  borderRadius: 30.0,
                  buttonSize: 48.0,
                  hoverColor: FlutterFlowTheme.of(context).primaryBackground,
                  hoverIconColor: FlutterFlowTheme.of(context).primary,
                  icon: Icon(
                    Icons.chat,
                    color: FlutterFlowTheme.of(context).accent3,
                    size: 24.0,
                  ),
                  onPressed: () async {
                    context.pushNamed(
                      'chat',
                      extra: <String, dynamic>{
                        kTransitionInfoKey: TransitionInfo(
                          hasTransition: true,
                          transitionType: PageTransitionType.fade,
                          duration: Duration(milliseconds: 0),
                        ),
                      },
                    );
                  },
                ),
              badges.Badge(
                badgeContent: Text(
                  '3',
                  style: FlutterFlowTheme.of(context).bodySmall.override(
                        fontFamily: 'Peyda',
                        color: FlutterFlowTheme.of(context).primaryBtnText,
                        letterSpacing: 0.0,
                        useGoogleFonts: false,
                      ),
                ),
                showBadge: true,
                shape: badges.BadgeShape.circle,
                badgeColor: FlutterFlowTheme.of(context).primary,
                elevation: 3.0,
                padding: EdgeInsetsDirectional.fromSTEB(8.0, 8.0, 8.0, 8.0),
                position: badges.BadgePosition.topEnd(),
                animationType: badges.BadgeAnimationType.scale,
                toAnimate: true,
                child: FlutterFlowIconButton(
                  borderColor: Colors.transparent,
                  borderRadius: 30.0,
                  buttonSize: 48.0,
                  hoverColor: FlutterFlowTheme.of(context).primaryBackground,
                  hoverIconColor: FlutterFlowTheme.of(context).primary,
                  icon: Icon(
                    Icons.notifications_active,
                    color: FlutterFlowTheme.of(context).accent3,
                    size: 24.0,
                  ),
                  onPressed: () async {
                    context.pushNamed(
                      'notification',
                      extra: <String, dynamic>{
                        kTransitionInfoKey: TransitionInfo(
                          hasTransition: true,
                          transitionType: PageTransitionType.fade,
                          duration: Duration(milliseconds: 0),
                        ),
                      },
                    );
                  },
                ),
              ),
              FlutterFlowIconButton(
                borderColor: Colors.transparent,
                borderRadius: 30.0,
                buttonSize: 48.0,
                hoverColor: FlutterFlowTheme.of(context).primaryBackground,
                hoverIconColor: FlutterFlowTheme.of(context).primary,
                icon: Icon(
                  Icons.person_sharp,
                  color: FlutterFlowTheme.of(context).accent3,
                  size: 24.0,
                ),
                onPressed: () async {
                  context.pushNamed(
                    'profile',
                    extra: <String, dynamic>{
                      kTransitionInfoKey: TransitionInfo(
                        hasTransition: true,
                        transitionType: PageTransitionType.fade,
                        duration: Duration(milliseconds: 0),
                      ),
                    },
                  );
                },
              ),
            ].divide(SizedBox(width: 8.0)).addToEnd(SizedBox(width: 12.0)),
          ),
        );
      },
    );
  }
}
