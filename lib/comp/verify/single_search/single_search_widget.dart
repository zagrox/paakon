import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'single_search_model.dart';
export 'single_search_model.dart';

class SingleSearchWidget extends StatefulWidget {
  const SingleSearchWidget({super.key});

  @override
  State<SingleSearchWidget> createState() => _SingleSearchWidgetState();
}

class _SingleSearchWidgetState extends State<SingleSearchWidget> {
  late SingleSearchModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SingleSearchModel());

    _model.emailAddressTextController ??= TextEditingController();
    _model.emailAddressFocusNode ??= FocusNode();

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
      alignment: AlignmentDirectional(-1.0, 0.0),
      child: Wrap(
        spacing: 0.0,
        runSpacing: 0.0,
        alignment: WrapAlignment.spaceAround,
        crossAxisAlignment: WrapCrossAlignment.center,
        direction: Axis.horizontal,
        runAlignment: WrapAlignment.center,
        verticalDirection: VerticalDirection.down,
        clipBehavior: Clip.none,
        children: [
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(16.0, 16.0, 16.0, 0.0),
            child: TextFormField(
              controller: _model.emailAddressTextController,
              focusNode: _model.emailAddressFocusNode,
              onChanged: (_) => EasyDebounce.debounce(
                '_model.emailAddressTextController',
                Duration(milliseconds: 2000),
                () => safeSetState(() {}),
              ),
              obscureText: false,
              decoration: InputDecoration(
                labelText: 'Email Address',
                labelStyle: FlutterFlowTheme.of(context).bodySmall.override(
                      fontFamily: 'Peyda',
                      letterSpacing: 0.0,
                    ),
                alignLabelWithHint: false,
                hintText: 'آدرس ایمیل',
                hintStyle: FlutterFlowTheme.of(context).bodySmall.override(
                      fontFamily: 'Peyda',
                      color: FlutterFlowTheme.of(context).secondaryText,
                      letterSpacing: 0.0,
                    ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: FlutterFlowTheme.of(context).lineColor,
                    width: 2.0,
                  ),
                  borderRadius: BorderRadius.circular(8.0),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Color(0x00000000),
                    width: 2.0,
                  ),
                  borderRadius: BorderRadius.circular(8.0),
                ),
                errorBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Color(0x00000000),
                    width: 2.0,
                  ),
                  borderRadius: BorderRadius.circular(8.0),
                ),
                focusedErrorBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Color(0x00000000),
                    width: 2.0,
                  ),
                  borderRadius: BorderRadius.circular(8.0),
                ),
                filled: true,
                fillColor: FlutterFlowTheme.of(context).secondaryBackground,
                contentPadding:
                    EdgeInsetsDirectional.fromSTEB(16.0, 24.0, 16.0, 24.0),
                suffixIcon: _model.emailAddressTextController!.text.isNotEmpty
                    ? InkWell(
                        onTap: () async {
                          _model.emailAddressTextController?.clear();
                          safeSetState(() {});
                        },
                        child: Icon(
                          Icons.clear,
                          color: FlutterFlowTheme.of(context).secondaryText,
                          size: 22.0,
                        ),
                      )
                    : null,
              ),
              style: FlutterFlowTheme.of(context).bodyMedium.override(
                    fontFamily: 'Peyda',
                    letterSpacing: 0.0,
                  ),
              validator: _model.emailAddressTextControllerValidator
                  .asValidator(context),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(16.0),
            child: FFButtonWidget(
              onPressed: () {
                print('Button pressed ...');
              },
              text: 'شروع اعتبارسنجی',
              options: FFButtonOptions(
                width: double.infinity,
                height: 64.0,
                padding: EdgeInsetsDirectional.fromSTEB(14.0, 0.0, 14.0, 0.0),
                iconPadding: EdgeInsetsDirectional.fromSTEB(4.0, 0.0, 4.0, 0.0),
                iconColor: FlutterFlowTheme.of(context).tertiary,
                color: FlutterFlowTheme.of(context).tertiary,
                textStyle: FlutterFlowTheme.of(context).labelLarge.override(
                      fontFamily: 'Peyda',
                      color: FlutterFlowTheme.of(context).primaryBtnText,
                      letterSpacing: 0.0,
                    ),
                borderSide: BorderSide(
                  color: FlutterFlowTheme.of(context).lineColor,
                ),
                borderRadius: BorderRadius.circular(8.0),
              ),
            ),
          ),
          Row(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0.0, 8.0, 0.0, 8.0),
                child: RichText(
                  textScaler: MediaQuery.of(context).textScaler,
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: 'هزینه هر بررسی ',
                        style: TextStyle(),
                      ),
                      TextSpan(
                        text: 'معادل یک اعتبار می باشد',
                        style: TextStyle(
                          color: FlutterFlowTheme.of(context).tertiary,
                          fontWeight: FontWeight.bold,
                        ),
                      )
                    ],
                    style: FlutterFlowTheme.of(context).labelSmall.override(
                          fontFamily: 'Peyda',
                          letterSpacing: 0.0,
                        ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
