import 'package:fintech/index.dart';

import '../../theme/fintech_theme.dart';
import '../../theme/fintech_util.dart';
import '../../theme/fintech_widgets.dart';
import 'package:flutter/material.dart';
import 'set_new_password_dailog_model.dart';
export 'set_new_password_dailog_model.dart';

class SetNewPasswordDailogWidget extends StatefulWidget {
  const SetNewPasswordDailogWidget({Key? key}) : super(key: key);

  @override
  _SetNewPasswordDailogWidgetState createState() =>
      _SetNewPasswordDailogWidgetState();
}

class _SetNewPasswordDailogWidgetState
    extends State<SetNewPasswordDailogWidget> {
  late SetNewPasswordDailogModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SetNewPasswordDailogModel());
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
      height: double.infinity,
      decoration: BoxDecoration(
        color: Colors.transparent,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            width: 289.0,
            height: 318.0,
            decoration: BoxDecoration(
              color: FintechTheme.of(context).secondaryBackground,
              boxShadow: [
                BoxShadow(
                  blurRadius: 3.0,
                  color: Color(0x33000000),
                  offset: Offset(0.0, 1.0),
                )
              ],
              borderRadius: BorderRadius.circular(16.0),
            ),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Image.asset(
                  'assets/images/Ilustration-8.png',
                  width: 108.0,
                  height: 108.0,
                  fit: BoxFit.scaleDown,
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(20.0, 0.0, 20.0, 0.0),
                  child: Text(
                    'We’ve send you a link to reset\nyour password. \nPlease check your email',
                    textAlign: TextAlign.center,
                    style: FintechTheme.of(context).bodyMedium.override(
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.normal,
                          lineHeight: 1.4,
                        ),
                  ),
                ),
                FFButtonWidget(
                  onPressed: () async {
                    await Future.delayed(const Duration(milliseconds: 2000));
                    Navigator.pop(context);
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (builder) => SetNewPasswordWidget()));
                  },
                  text: 'Ok',
                  options: FFButtonOptions(
                    width: 166.0,
                    height: 36.0,
                    padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                    iconPadding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                    color: FintechTheme.of(context).primary,
                    textStyle: FintechTheme.of(context).titleSmall.override(
                          fontFamily: 'Inter',
                          color: Colors.white,
                          fontWeight: FontWeight.normal,
                        ),
                    elevation: 2.0,
                    borderSide: BorderSide(
                      color: Colors.transparent,
                      width: 1.0,
                    ),
                    borderRadius: BorderRadius.circular(8.0),
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
