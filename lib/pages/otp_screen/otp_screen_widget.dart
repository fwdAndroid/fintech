import 'package:fintech/index.dart';

import '../../theme/fintech_theme.dart';
import '../../theme/fintech_util.dart';
import '../../theme/fintech_widgets.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:flutter/material.dart';
import 'otp_screen_model.dart';
export 'otp_screen_model.dart';

class OtpScreenWidget extends StatefulWidget {
  const OtpScreenWidget({Key? key}) : super(key: key);

  @override
  _OtpScreenWidgetState createState() => _OtpScreenWidgetState();
}

class _OtpScreenWidgetState extends State<OtpScreenWidget> {
  late OtpScreenModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();
  final _unfocusNode = FocusNode();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => OtpScreenModel());
  }

  @override
  void dispose() {
    _model.dispose();

    _unfocusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).requestFocus(_unfocusNode),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FintechTheme.of(context).secondaryBackground,
        body: SafeArea(
          child: Padding(
            padding: EdgeInsetsDirectional.fromSTEB(20.0, 10.0, 20.0, 0.0),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
                      splashColor: Colors.transparent,
                      focusColor: Colors.transparent,
                      hoverColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      onTap: () async {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (builder) => SignInWidget()));
                      },
                      child: Icon(
                        Icons.arrow_back_sharp,
                        color: Colors.black,
                        size: 24.0,
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 120.0, 0.0, 0.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Image.asset(
                            'assets/images/Ilustration-6.png',
                            width: 79.0,
                            height: 79.0,
                            fit: BoxFit.scaleDown,
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 20.0, 0.0, 0.0),
                            child: Text(
                              'Enter the OTP code',
                              style: FintechTheme.of(context).bodyMedium,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 10.0, 0.0, 0.0),
                            child: Text(
                              'We have sent the OTP code to',
                              style:
                                  FintechTheme.of(context).bodyMedium.override(
                                        fontFamily: 'Inter',
                                        fontSize: 12.0,
                                        fontWeight: FontWeight.normal,
                                      ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 10.0, 0.0, 0.0),
                            child: Text(
                              '089362738292',
                              style:
                                  FintechTheme.of(context).bodyMedium.override(
                                        fontFamily: 'Inter',
                                        fontSize: 14.0,
                                        fontWeight: FontWeight.w600,
                                      ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 60.0, 0.0, 0.0),
                  child: PinCodeTextField(
                    autoDisposeControllers: false,
                    appContext: context,
                    length: 4,
                    textStyle: FintechTheme.of(context).titleSmall.override(
                          fontFamily: 'Inter',
                          color: FintechTheme.of(context).primaryText,
                        ),
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    enableActiveFill: true,
                    autoFocus: true,
                    enablePinAutofill: true,
                    errorTextSpace: 16.0,
                    showCursor: true,
                    cursorColor: FintechTheme.of(context).primary,
                    obscureText: false,
                    hintCharacter: '●',
                    pinTheme: PinTheme(
                      fieldHeight: 60.0,
                      fieldWidth: 60.0,
                      borderWidth: 2.0,
                      borderRadius: BorderRadius.circular(12.0),
                      shape: PinCodeFieldShape.box,
                      activeColor: FintechTheme.of(context).primary,
                      inactiveColor: FintechTheme.of(context).primaryBackground,
                      selectedColor: FintechTheme.of(context).primaryBtnText,
                      activeFillColor: FintechTheme.of(context).primary,
                      inactiveFillColor:
                          FintechTheme.of(context).primaryBackground,
                      selectedFillColor:
                          FintechTheme.of(context).primaryBtnText,
                    ),
                    controller: _model.pinCodeController,
                    onChanged: (_) {},
                    autovalidateMode: AutovalidateMode.onUserInteraction,
                    validator:
                        _model.pinCodeControllerValidator.asValidator(context),
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 60.0, 0.0, 0.0),
                  child: FFButtonWidget(
                    onPressed: () async {
                      await Future.delayed(const Duration(milliseconds: 2000));

                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (builder) => HomeWidget()));
                    },
                    text: 'Continue ',
                    options: FFButtonOptions(
                      width: 130.0,
                      height: 45.0,
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                      iconPadding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                      color: FintechTheme.of(context).primary,
                      textStyle: FintechTheme.of(context).titleSmall.override(
                            fontFamily: 'Inter',
                            color: Colors.white,
                            fontWeight: FontWeight.w500,
                          ),
                      elevation: 2.0,
                      borderSide: BorderSide(
                        color: Colors.transparent,
                        width: 1.0,
                      ),
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
