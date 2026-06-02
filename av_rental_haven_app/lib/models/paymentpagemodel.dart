import '/components/billing_option_widget.dart';
import '/components/summary_row_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import 'payment_page_widget.dart' show PaymentPageWidget;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class PaymentPageModel extends FlutterFlowModel<PaymentPageWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for BillingOption.
  late BillingOptionModel billingOptionModel1;
  // Model for BillingOption.
  late BillingOptionModel billingOptionModel2;
  // Model for BillingOption.
  late BillingOptionModel billingOptionModel3;
  // Model for SummaryRow.
  late SummaryRowModel summaryRowModel1;
  // Model for SummaryRow.
  late SummaryRowModel summaryRowModel2;
  // Model for SummaryRow.
  late SummaryRowModel summaryRowModel3;

  @override
  void initState(BuildContext context) {
    billingOptionModel1 = createModel(context, () => BillingOptionModel());
    billingOptionModel2 = createModel(context, () => BillingOptionModel());
    billingOptionModel3 = createModel(context, () => BillingOptionModel());
    summaryRowModel1 = createModel(context, () => SummaryRowModel());
    summaryRowModel2 = createModel(context, () => SummaryRowModel());
    summaryRowModel3 = createModel(context, () => SummaryRowModel());
  }

  @override
  void dispose() {
    billingOptionModel1.dispose();
    billingOptionModel2.dispose();
    billingOptionModel3.dispose();
    summaryRowModel1.dispose();
    summaryRowModel2.dispose();
    summaryRowModel3.dispose();
  }
}
