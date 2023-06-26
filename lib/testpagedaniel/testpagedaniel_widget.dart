import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/custom_code/widgets/index.dart' as custom_widgets;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'testpagedaniel_model.dart';
export 'testpagedaniel_model.dart';

class TestpagedanielWidget extends StatefulWidget {
  const TestpagedanielWidget({Key? key}) : super(key: key);

  @override
  _TestpagedanielWidgetState createState() => _TestpagedanielWidgetState();
}

class _TestpagedanielWidgetState extends State<TestpagedanielWidget> {
  late TestpagedanielModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();
  LatLng? currentUserLocationValue;

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => TestpagedanielModel());

    getCurrentUserLocation(defaultLocation: LatLng(0.0, 0.0), cached: true)
        .then((loc) => setState(() => currentUserLocationValue = loc));
    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();
    if (currentUserLocationValue == null) {
      return Container(
        color: FlutterFlowTheme.of(context).primaryBackground,
        child: Center(
          child: SizedBox(
            width: 50.0,
            height: 50.0,
            child: CircularProgressIndicator(
              color: FlutterFlowTheme.of(context).primary,
            ),
          ),
        ),
      );
    }

    return Title(
        title: 'testpagedaniel',
        color: FlutterFlowTheme.of(context).primary,
        child: GestureDetector(
          onTap: () => FocusScope.of(context).requestFocus(_model.unfocusNode),
          child: Scaffold(
            key: scaffoldKey,
            backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
            appBar: AppBar(
              backgroundColor: FlutterFlowTheme.of(context).primary,
              automaticallyImplyLeading: false,
              title: Text(
                'Page Title',
                style: FlutterFlowTheme.of(context).headlineMedium.override(
                      fontFamily: 'Sora',
                      color: Colors.white,
                      fontSize: 22.0,
                    ),
              ),
              actions: [],
              centerTitle: false,
              elevation: 2.0,
            ),
            body: SafeArea(
              top: true,
              child: Container(
                width: double.infinity,
                height: double.infinity,
                child: custom_widgets.CustomMapWidget(
                  width: double.infinity,
                  height: double.infinity,
                  initialLocation: currentUserLocationValue!,
                ),
              ),
            ),
          ),
        ));
  }
}
