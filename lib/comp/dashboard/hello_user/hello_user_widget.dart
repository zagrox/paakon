import '/comp/account/profile_avatar/profile_avatar_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'hello_user_model.dart';
export 'hello_user_model.dart';

class HelloUserWidget extends StatefulWidget {
  const HelloUserWidget({super.key});

  @override
  State<HelloUserWidget> createState() => _HelloUserWidgetState();
}

class _HelloUserWidgetState extends State<HelloUserWidget> {
  late HelloUserModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => HelloUserModel());

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
      width: 550.0,
      constraints: const BoxConstraints(
        maxWidth: double.infinity,
      ),
      decoration: const BoxDecoration(),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          Padding(
            padding: const EdgeInsetsDirectional.fromSTEB(8.0, 8.0, 8.0, 0.0),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'سلام,',
                  style: FlutterFlowTheme.of(context).displaySmall.override(
                        fontFamily: 'Peyda',
                        letterSpacing: 0.0,
                        fontWeight: FontWeight.normal,
                        useGoogleFonts: false,
                      ),
                ),
                wrapWithModel(
                  model: _model.profileAvatarModel,
                  updateCallback: () => setState(() {}),
                  child: const ProfileAvatarWidget(),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(2.0, 0.0, 0.0, 0.0),
                  child: Text(
                    'کاربر گرامی',
                    style: FlutterFlowTheme.of(context).displaySmall.override(
                          fontFamily: 'Peyda',
                          color: FlutterFlowTheme.of(context).primary,
                          letterSpacing: 0.0,
                          useGoogleFonts: false,
                        ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
