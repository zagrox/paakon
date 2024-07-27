import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'mode_model.dart';
export 'mode_model.dart';

class ModeWidget extends StatefulWidget {
  const ModeWidget({super.key});

  @override
  State<ModeWidget> createState() => _ModeWidgetState();
}

class _ModeWidgetState extends State<ModeWidget> {
  late ModeModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ModeModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: AlignmentDirectional(0.0, 0.0),
      child: Container(
        width: 56.0,
        height: 56.0,
        decoration: BoxDecoration(),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (Theme.of(context).brightness == Brightness.dark)
              FlutterFlowIconButton(
                borderColor: Colors.transparent,
                borderWidth: 1.0,
                buttonSize: 48.0,
                icon: Icon(
                  Icons.nights_stay_outlined,
                  color: FlutterFlowTheme.of(context).primary,
                  size: 24.0,
                ),
                onPressed: () async {
                  setDarkModeSetting(context, ThemeMode.light);
                },
              ),
            if (Theme.of(context).brightness == Brightness.light)
              FlutterFlowIconButton(
                borderColor: Colors.transparent,
                borderWidth: 1.0,
                buttonSize: 48.0,
                icon: Icon(
                  Icons.wb_sunny_rounded,
                  color: FlutterFlowTheme.of(context).accent3,
                  size: 24.0,
                ),
                onPressed: () async {
                  setDarkModeSetting(context, ThemeMode.dark);
                },
              ),
          ],
        ),
      ),
    );
  }
}
