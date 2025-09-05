import 'package:drunk_drive/core/styles/app_text_styles.dart';
import 'package:flutter/material.dart';

Widget paymentDetails({
  required String discountAmt,
  required String totalAmt,
  required String paidAmt,
}) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    spacing: 8,
    children: [
      Text("Payment Details: ", style: AppTextStyles.h4),
      paymentList(paymentName: "Total Fare", paymentAmount: totalAmt),
      paymentList(paymentName: "Discount", paymentAmount: discountAmt),
      paymentList(paymentName: "Paid Amount", paymentAmount: paidAmt),
    ],
  );
}

Widget paymentList({
  required String paymentName,
  required String paymentAmount,
}) {
  return Row(
    children: [
      Text(
        paymentName,
        style: AppTextStyles.normal.copyWith(fontWeight: FontWeight.bold),
      ),
      Spacer(),
      Text("CAD $paymentAmount"),
    ],
  );
}
