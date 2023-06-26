import '/chat/message_preview/message_preview_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class MessageHomeModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for messagePreview component.
  late MessagePreviewModel messagePreviewModel;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    messagePreviewModel = createModel(context, () => MessagePreviewModel());
  }

  void dispose() {
    unfocusNode.dispose();
    messagePreviewModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
