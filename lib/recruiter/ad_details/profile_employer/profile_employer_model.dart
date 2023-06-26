import '/auth/firebase_auth/auth_util.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/main_pages/navigation/navigation_widget.dart';
import '/recruiter/component/choose_plan/choose_plan_widget.dart';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class ProfileEmployerModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for navigation component.
  late NavigationModel navigationModel;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    navigationModel = createModel(context, () => NavigationModel());
  }

  void dispose() {
    unfocusNode.dispose();
    navigationModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
