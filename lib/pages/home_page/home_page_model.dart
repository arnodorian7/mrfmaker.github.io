import '/components/welcome_section_widget.dart';
import '/create_request/create_request_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/testdd/testdd_widget.dart';
import '/view_mrflist/view_mrflist_widget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class HomePageModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  // Model for WelcomeSection component.
  late WelcomeSectionModel welcomeSectionModel;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    welcomeSectionModel = createModel(context, () => WelcomeSectionModel());
  }

  void dispose() {
    welcomeSectionModel.dispose();
  }

  /// Additional helper methods are added here.

}
