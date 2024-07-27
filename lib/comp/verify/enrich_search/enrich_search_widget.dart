import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'enrich_search_model.dart';
export 'enrich_search_model.dart';

class EnrichSearchWidget extends StatefulWidget {
  const EnrichSearchWidget({super.key});

  @override
  State<EnrichSearchWidget> createState() => _EnrichSearchWidgetState();
}

class _EnrichSearchWidgetState extends State<EnrichSearchWidget> {
  late EnrichSearchModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => EnrichSearchModel());

    _model.emailAddressTextController ??= TextEditingController();
    _model.emailAddressFocusNode ??= FocusNode();

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
      alignment: AlignmentDirectional(-1.0, 0.0),
      child: Padding(
        padding: EdgeInsets.all(8.0),
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
                  () => setState(() {}),
                ),
                obscureText: false,
                decoration: InputDecoration(
                  labelText: 'Email Address',
                  labelStyle: FlutterFlowTheme.of(context).bodySmall.override(
                        fontFamily: 'Peyda',
                        fontSize: 18.0,
                        letterSpacing: 0.0,
                        useGoogleFonts: false,
                      ),
                  alignLabelWithHint: false,
                  hintText: 'آدرس ایمیل',
                  hintStyle: FlutterFlowTheme.of(context).bodySmall.override(
                        fontFamily: 'Peyda',
                        color: FlutterFlowTheme.of(context).secondaryText,
                        fontSize: 20.0,
                        letterSpacing: 0.0,
                        useGoogleFonts: false,
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
                            setState(() {});
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
                      fontSize: 20.0,
                      letterSpacing: 0.0,
                      useGoogleFonts: false,
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
                icon: Icon(
                  Icons.person_search_outlined,
                  color: FlutterFlowTheme.of(context).primaryText,
                  size: 32.0,
                ),
                options: FFButtonOptions(
                  width: double.infinity,
                  height: 64.0,
                  padding: EdgeInsetsDirectional.fromSTEB(14.0, 0.0, 14.0, 0.0),
                  iconPadding:
                      EdgeInsetsDirectional.fromSTEB(4.0, 0.0, 4.0, 0.0),
                  color: FlutterFlowTheme.of(context).primary,
                  textStyle: FlutterFlowTheme.of(context).labelLarge.override(
                        fontFamily: 'Peyda',
                        color: FlutterFlowTheme.of(context).primaryBtnText,
                        letterSpacing: 0.0,
                        useGoogleFonts: false,
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
                          text: 'هزینه هر کاوش موفق ',
                          style: TextStyle(),
                        ),
                        TextSpan(
                          text: 'معادل ۲ اعتبار می باشد',
                          style: TextStyle(
                            color: FlutterFlowTheme.of(context).tertiary,
                            fontWeight: FontWeight.bold,
                          ),
                        )
                      ],
                      style: FlutterFlowTheme.of(context).labelSmall.override(
                            fontFamily: 'Peyda',
                            letterSpacing: 0.0,
                            useGoogleFonts: false,
                          ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
