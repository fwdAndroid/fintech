import 'package:fintech/index.dart';

import '../../theme/fintech_icon_button.dart';
import '../../theme/fintech_theme.dart';
import '../../theme/fintech_util.dart';
import 'package:flutter/material.dart';
import 'allservices_model.dart';
export 'allservices_model.dart';

class AllservicesWidget extends StatefulWidget {
  const AllservicesWidget({Key? key}) : super(key: key);

  @override
  _AllservicesWidgetState createState() => _AllservicesWidgetState();
}

class _AllservicesWidgetState extends State<AllservicesWidget> {
  late AllservicesModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();
  final _unfocusNode = FocusNode();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => AllservicesModel());
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
        backgroundColor: FintechTheme.of(context).primaryBackground,
        body: SafeArea(
          child: Padding(
            padding: EdgeInsetsDirectional.fromSTEB(20.0, 10.0, 20.0, 0.0),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 0.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.center,
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
                                      builder: (builder) => HomeWidget()));
                            },
                            child: Icon(
                              Icons.arrow_back_sharp,
                              color: Colors.black,
                              size: 24.0,
                            ),
                          ),
                        ],
                      ),
                      Column(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                5.0, 0.0, 0.0, 0.0),
                            child: Text(
                              'All services',
                              style:
                                  FintechTheme.of(context).bodyMedium.override(
                                        fontFamily: 'Inter',
                                        fontSize: 16.0,
                                      ),
                            ),
                          ),
                        ],
                      ),
                      Column(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [],
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 30.0, 0.0, 0.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Text(
                        'Most Used',
                        style: FintechTheme.of(context).bodyMedium.override(
                              fontFamily: 'Inter',
                              fontSize: 16.0,
                            ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 20.0, 0.0, 0.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          FintechIconButton(
                            borderColor: Colors.transparent,
                            borderRadius: 30.0,
                            borderWidth: 1.0,
                            buttonSize: 60.0,
                            fillColor: FintechTheme.of(context).tertiary,
                            icon: Icon(
                              Icons.calendar_today_outlined,
                              color: FintechTheme.of(context).secondary,
                              size: 24.0,
                            ),
                            onPressed: () async {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (builder) =>
                                          RecipientsWidget()));
                            },
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 5.0, 0.0, 0.0),
                            child: Text(
                              'Schedule',
                              textAlign: TextAlign.center,
                              style:
                                  FintechTheme.of(context).bodyMedium.override(
                                        fontFamily: 'Inter',
                                        fontSize: 12.0,
                                      ),
                            ),
                          ),
                        ],
                      ),
                      Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          FintechIconButton(
                            borderColor: Colors.transparent,
                            borderRadius: 30.0,
                            borderWidth: 1.0,
                            buttonSize: 60.0,
                            fillColor: FintechTheme.of(context).tertiary,
                            icon: Icon(
                              Icons.favorite_border_rounded,
                              color: FintechTheme.of(context).secondary,
                              size: 24.0,
                            ),
                            onPressed: () async {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (builder) =>
                                          RecipientsWidget()));
                            },
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 5.0, 0.0, 0.0),
                            child: Text(
                              'Favourites',
                              textAlign: TextAlign.center,
                              style:
                                  FintechTheme.of(context).bodyMedium.override(
                                        fontFamily: 'Inter',
                                        fontSize: 12.0,
                                      ),
                            ),
                          ),
                        ],
                      ),
                      Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          FintechIconButton(
                            borderColor: Colors.transparent,
                            borderRadius: 30.0,
                            borderWidth: 1.0,
                            buttonSize: 60.0,
                            fillColor: FintechTheme.of(context).tertiary,
                            icon: Icon(
                              Icons.import_export_rounded,
                              color: FintechTheme.of(context).secondary,
                              size: 24.0,
                            ),
                            onPressed: () async {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (builder) =>
                                          RecipientsWidget()));
                            },
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 5.0, 0.0, 0.0),
                            child: Text(
                              'Exchange',
                              textAlign: TextAlign.center,
                              style:
                                  FintechTheme.of(context).bodyMedium.override(
                                        fontFamily: 'Inter',
                                        fontSize: 12.0,
                                      ),
                            ),
                          ),
                        ],
                      ),
                      Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          FintechIconButton(
                            borderColor: Colors.transparent,
                            borderRadius: 30.0,
                            borderWidth: 1.0,
                            buttonSize: 60.0,
                            fillColor: FintechTheme.of(context).tertiary,
                            icon: Icon(
                              Icons.attach_money,
                              color: FintechTheme.of(context).secondary,
                              size: 24.0,
                            ),
                            onPressed: () async {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (builder) =>
                                          RecipientsWidget()));
                            },
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 5.0, 0.0, 0.0),
                            child: Text(
                              'International',
                              textAlign: TextAlign.center,
                              style:
                                  FintechTheme.of(context).bodyMedium.override(
                                        fontFamily: 'Inter',
                                        fontSize: 12.0,
                                      ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 30.0, 0.0, 0.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Text(
                        'Important',
                        style: FintechTheme.of(context).bodyMedium.override(
                              fontFamily: 'Inter',
                              fontSize: 16.0,
                            ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 20.0, 0.0, 0.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          FintechIconButton(
                            borderColor: Colors.transparent,
                            borderRadius: 30.0,
                            borderWidth: 1.0,
                            buttonSize: 60.0,
                            fillColor: FintechTheme.of(context).alternate,
                            icon: Icon(
                              Icons.history_outlined,
                              color: FintechTheme.of(context).primary,
                              size: 24.0,
                            ),
                            onPressed: () async {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (builder) =>
                                          BillPaymentsWidget()));
                            },
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 5.0, 0.0, 0.0),
                            child: Text(
                              'Pay later',
                              textAlign: TextAlign.center,
                              style:
                                  FintechTheme.of(context).bodyMedium.override(
                                        fontFamily: 'Inter',
                                        fontSize: 12.0,
                                      ),
                            ),
                          ),
                        ],
                      ),
                      Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          FintechIconButton(
                            borderColor: Colors.transparent,
                            borderRadius: 30.0,
                            borderWidth: 1.0,
                            buttonSize: 60.0,
                            fillColor: FintechTheme.of(context).alternate,
                            icon: Icon(
                              Icons.privacy_tip_outlined,
                              color: FintechTheme.of(context).primary,
                              size: 24.0,
                            ),
                            onPressed: () async {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (builder) =>
                                          BillPaymentsWidget()));
                            },
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 5.0, 0.0, 0.0),
                            child: Text(
                              'Insurance',
                              textAlign: TextAlign.center,
                              style:
                                  FintechTheme.of(context).bodyMedium.override(
                                        fontFamily: 'Inter',
                                        fontSize: 12.0,
                                      ),
                            ),
                          ),
                        ],
                      ),
                      Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          FintechIconButton(
                            borderColor: Colors.transparent,
                            borderRadius: 30.0,
                            borderWidth: 1.0,
                            buttonSize: 60.0,
                            fillColor: FintechTheme.of(context).alternate,
                            icon: Icon(
                              Icons.star_outline_rounded,
                              color: FintechTheme.of(context).primary,
                              size: 24.0,
                            ),
                            onPressed: () async {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (builder) =>
                                          BillPaymentsWidget()));
                            },
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 5.0, 0.0, 0.0),
                            child: Text(
                              'Favourites',
                              textAlign: TextAlign.center,
                              style:
                                  FintechTheme.of(context).bodyMedium.override(
                                        fontFamily: 'Inter',
                                        fontSize: 12.0,
                                      ),
                            ),
                          ),
                        ],
                      ),
                      Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          FintechIconButton(
                            borderColor: Colors.transparent,
                            borderRadius: 30.0,
                            borderWidth: 1.0,
                            buttonSize: 60.0,
                            fillColor: FintechTheme.of(context).alternate,
                            icon: Icon(
                              Icons.school_outlined,
                              color: FintechTheme.of(context).primary,
                              size: 24.0,
                            ),
                            onPressed: () async {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (builder) =>
                                          BillPaymentsWidget()));
                            },
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 5.0, 0.0, 0.0),
                            child: Text(
                              'Education',
                              textAlign: TextAlign.center,
                              style:
                                  FintechTheme.of(context).bodyMedium.override(
                                        fontFamily: 'Inter',
                                        fontSize: 12.0,
                                      ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 30.0, 0.0, 0.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Text(
                        'Least used',
                        style: FintechTheme.of(context).bodyMedium.override(
                              fontFamily: 'Inter',
                              fontSize: 16.0,
                            ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 20.0, 0.0, 0.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          FintechIconButton(
                            borderColor: Colors.transparent,
                            borderRadius: 30.0,
                            borderWidth: 1.0,
                            buttonSize: 60.0,
                            fillColor: Color(0xFFFCDDEC),
                            icon: Icon(
                              Icons.person_outline_outlined,
                              color: Color(0xFFF178B6),
                              size: 24.0,
                            ),
                            onPressed: () async {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (builder) =>
                                          RecipientsWidget()));
                            },
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 5.0, 0.0, 0.0),
                            child: Text(
                              'Contact',
                              textAlign: TextAlign.center,
                              style:
                                  FintechTheme.of(context).bodyMedium.override(
                                        fontFamily: 'Inter',
                                        fontSize: 12.0,
                                      ),
                            ),
                          ),
                        ],
                      ),
                      Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          FintechIconButton(
                            borderColor: Colors.transparent,
                            borderRadius: 30.0,
                            borderWidth: 1.0,
                            buttonSize: 60.0,
                            fillColor: Color(0xFFFCDDEC),
                            icon: Icon(
                              Icons.receipt_long_rounded,
                              color: Color(0xFFF178B6),
                              size: 24.0,
                            ),
                            onPressed: () async {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (builder) =>
                                          BillPaymentsWidget()));
                            },
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 5.0, 0.0, 0.0),
                            child: Text(
                              'Bill payment',
                              textAlign: TextAlign.center,
                              style:
                                  FintechTheme.of(context).bodyMedium.override(
                                        fontFamily: 'Inter',
                                        fontSize: 12.0,
                                      ),
                            ),
                          ),
                        ],
                      ),
                      Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          FintechIconButton(
                            borderColor: Colors.transparent,
                            borderRadius: 30.0,
                            borderWidth: 1.0,
                            buttonSize: 60.0,
                            fillColor: Color(0xFFFCDDEC),
                            icon: Icon(
                              Icons.article_outlined,
                              color: Color(0xFFF178B6),
                              size: 24.0,
                            ),
                            onPressed: () async {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (builder) =>
                                          PromosdiscountWidget()));
                            },
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 5.0, 0.0, 0.0),
                            child: Text(
                              'Promos',
                              textAlign: TextAlign.center,
                              style:
                                  FintechTheme.of(context).bodyMedium.override(
                                        fontFamily: 'Inter',
                                        fontSize: 12.0,
                                      ),
                            ),
                          ),
                        ],
                      ),
                      Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          FintechIconButton(
                            borderColor: Colors.transparent,
                            borderRadius: 30.0,
                            borderWidth: 1.0,
                            buttonSize: 60.0,
                            fillColor: Color(0xFFFCDDEC),
                            icon: Icon(
                              Icons.credit_card,
                              color: Color(0xFFF178B6),
                              size: 24.0,
                            ),
                            onPressed: () async {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (builder) => MyCardsWidget()));
                            },
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 5.0, 0.0, 0.0),
                            child: Text(
                              'Switch card',
                              textAlign: TextAlign.center,
                              style:
                                  FintechTheme.of(context).bodyMedium.override(
                                        fontFamily: 'Inter',
                                        fontSize: 12.0,
                                      ),
                            ),
                          ),
                        ],
                      ),
                    ],
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
