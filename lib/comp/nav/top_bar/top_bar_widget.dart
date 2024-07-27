import '/comp/account/profile_avatar/profile_avatar_widget.dart';
import '/comp/general/breadcrumb/breadcrumb_widget.dart';
import '/comp/general/mode/mode_widget.dart';
import '/comp/general/remain_credits/remain_credits_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'top_bar_model.dart';
export 'top_bar_model.dart';

class TopBarWidget extends StatefulWidget {
  const TopBarWidget({super.key});

  @override
  State<TopBarWidget> createState() => _TopBarWidgetState();
}

class _TopBarWidgetState extends State<TopBarWidget> {
  late TopBarModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => TopBarModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Align(
      alignment: const AlignmentDirectional(1.0, -1.0),
      child: Container(
        height: 110.0,
        decoration: const BoxDecoration(),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            if (FFAppState().navOpen == true)
              Expanded(
                child: Container(
                  decoration: const BoxDecoration(),
                  child: Visibility(
                    visible: responsiveVisibility(
                      context: context,
                      phone: false,
                      tablet: false,
                    ),
                    child: wrapWithModel(
                      model: _model.breadcrumbModel,
                      updateCallback: () => setState(() {}),
                      child: const BreadcrumbWidget(),
                    ),
                  ),
                ),
              ),
            wrapWithModel(
              model: _model.modeModel,
              updateCallback: () => setState(() {}),
              child: const ModeWidget(),
            ),
            wrapWithModel(
              model: _model.profileAvatarModel,
              updateCallback: () => setState(() {}),
              child: const ProfileAvatarWidget(),
            ),
            wrapWithModel(
              model: _model.remainCreditsModel,
              updateCallback: () => setState(() {}),
              child: const RemainCreditsWidget(),
            ),
          ].divide(const SizedBox(width: 10.0)),
        ),
      ),
    );
  }
}
