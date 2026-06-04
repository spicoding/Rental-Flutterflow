import 'billing_option.dart';
import 'summary_row_model.dart';
import 'package:flutter/material.dart';

class PaymentPageModel {
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

  void initState(BuildContext context) {
    billingOptionModel1 = BillingOptionModel();
    billingOptionModel2 = BillingOptionModel();
    billingOptionModel3 = BillingOptionModel();
    summaryRowModel1 = SummaryRowModel();
    summaryRowModel2 = SummaryRowModel();
    summaryRowModel3 = SummaryRowModel();
  }

  void dispose() {
    billingOptionModel1.dispose();
    billingOptionModel2.dispose();
    billingOptionModel3.dispose();
    summaryRowModel1.dispose();
    summaryRowModel2.dispose();
    summaryRowModel3.dispose();
  }
}
