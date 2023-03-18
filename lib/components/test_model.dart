import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class TestModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this component.

  final formKey = GlobalKey<FormState>();
  // State field(s) for OrderType widget.
  String? orderTypeValue;
  FormFieldController<String>? orderTypeController;
  // State field(s) for RequirmentType widget.
  String? requirmentTypeValue;
  FormFieldController<String>? requirmentTypeController;
  // State field(s) for ItemName widget.
  TextEditingController? itemNameController;
  String? Function(BuildContext, String?)? itemNameControllerValidator;
  // State field(s) for Units widget.
  String? unitsValue;
  FormFieldController<String>? unitsController;
  // State field(s) for Qty widget.
  TextEditingController? qtyController;
  String? Function(BuildContext, String?)? qtyControllerValidator;
  // State field(s) for Remarks widget.
  TextEditingController? remarksController;
  String? Function(BuildContext, String?)? remarksControllerValidator;
  // State field(s) for Requester widget.
  String? requesterValue;
  FormFieldController<String>? requesterController;
  // State field(s) for ResourceCode widget.
  TextEditingController? resourceCodeController;
  String? Function(BuildContext, String?)? resourceCodeControllerValidator;
  // Stores action output result for [Backend Call - API (CompleteSender)] action in Button widget.
  ApiCallResponse? apiResult6ii;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {}

  void dispose() {
    itemNameController?.dispose();
    qtyController?.dispose();
    remarksController?.dispose();
    resourceCodeController?.dispose();
  }

  /// Additional helper methods are added here.

}
