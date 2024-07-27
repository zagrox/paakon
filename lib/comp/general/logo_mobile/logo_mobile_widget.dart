import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'logo_mobile_model.dart';
export 'logo_mobile_model.dart';

class LogoMobileWidget extends StatefulWidget {
  const LogoMobileWidget({super.key});

  @override
  State<LogoMobileWidget> createState() => _LogoMobileWidgetState();
}

class _LogoMobileWidgetState extends State<LogoMobileWidget> {
  late LogoMobileModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => LogoMobileModel());

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
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(0.0),
          bottomRight: Radius.circular(0.0),
          topLeft: Radius.circular(0.0),
          topRight: Radius.circular(0.0),
        ),
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(8.0),
        child: Image.asset(
          'assets/images/paakon-logo-gradient-round.png',
          width: 300.0,
          height: 200.0,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
