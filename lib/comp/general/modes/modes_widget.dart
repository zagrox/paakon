import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'modes_model.dart';
export 'modes_model.dart';

class ModesWidget extends StatefulWidget {
  const ModesWidget({super.key});

  @override
  State<ModesWidget> createState() => _ModesWidgetState();
}

class _ModesWidgetState extends State<ModesWidget> {
  late ModesModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ModesModel());

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
      width: 55.0,
      height: 55.0,
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).secondaryBackground,
        shape: BoxShape.circle,
      ),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          if (Theme.of(context).brightness == Brightness.dark)
            FlutterFlowIconButton(
              borderColor: Colors.transparent,
              borderRadius: 30.0,
              borderWidth: 1.0,
              buttonSize: 48.0,
              icon: Icon(
                Icons.nights_stay_outlined,
                color: FlutterFlowTheme.of(context).accent2,
                size: 24.0,
              ),
              onPressed: () async {
                setDarkModeSetting(context, ThemeMode.light);
              },
            ),
          if (Theme.of(context).brightness == Brightness.light)
            FlutterFlowIconButton(
              borderColor: Colors.transparent,
              borderRadius: 30.0,
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
    );
  }
}
