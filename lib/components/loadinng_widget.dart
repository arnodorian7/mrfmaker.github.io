import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'loadinng_model.dart';
export 'loadinng_model.dart';

class LoadinngWidget extends StatefulWidget {
  const LoadinngWidget({Key? key}) : super(key: key);

  @override
  _LoadinngWidgetState createState() => _LoadinngWidgetState();
}

class _LoadinngWidgetState extends State<LoadinngWidget> {
  late LoadinngModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => LoadinngModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Text(
      'Hello World',
      style: FlutterFlowTheme.of(context).bodyText1,
    );
  }
}
