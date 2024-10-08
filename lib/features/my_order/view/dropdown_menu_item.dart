import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

// Define the list of dropdown items
List<DropdownMenuItem<IssueDropdownList>> getStaticDropdownMenuItems() {
  return [
    DropdownMenuItem<IssueDropdownList>(
      value: IssueDropdownList.productNotAsDescribed,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Product Not as Described",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12.sp),
            overflow: TextOverflow.ellipsis,
          ),
          Text(
            "Received item doesn't match the description or photos.",
            style: TextStyle(fontSize: 10.sp),
            overflow: TextOverflow.ellipsis,
          ),
          const Divider(),
        ],
      ),
    ),
    DropdownMenuItem<IssueDropdownList>(
      value: IssueDropdownList.nonDelivery,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Non-Delivery",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12.sp),
            overflow: TextOverflow.ellipsis,
          ),
          Text(
            "Item not delivered on time or at all.",
            style: TextStyle(fontSize: 10.sp),
            overflow: TextOverflow.ellipsis,
          ),
          const Divider(),
        ],
      ),
    ),
    DropdownMenuItem<IssueDropdownList>(
      value: IssueDropdownList.defectiveOrDamagedProduct,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Defective or Damaged Product",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12.sp),
            overflow: TextOverflow.ellipsis,
          ),
          Text(
            "Product arrives damaged or with defects.",
            style: TextStyle(fontSize: 10.sp),
            overflow: TextOverflow.ellipsis,
          ),
          const Divider(),
        ],
      ),
    ),
    DropdownMenuItem<IssueDropdownList>(
      value: IssueDropdownList.wrongItemShipped,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Wrong Item Shipped",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12.sp),
            overflow: TextOverflow.ellipsis,
          ),
          Text(
            "Incorrect item, color, size, or variant sent.",
            style: TextStyle(fontSize: 10.sp),
            overflow: TextOverflow.ellipsis,
          ),
          const Divider(),
        ],
      ),
    ),
    DropdownMenuItem<IssueDropdownList>(
      value: IssueDropdownList.lateDelivery,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Late Delivery",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12.sp),
            overflow: TextOverflow.ellipsis,
          ),
          Text(
            "Product arrives after promised date.",
            style: TextStyle(fontSize: 10.sp),
            overflow: TextOverflow.ellipsis,
          ),
          const Divider(),
        ],
      ),
    ),
    DropdownMenuItem<IssueDropdownList>(
      value: IssueDropdownList.refundIssues,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Refund Issues",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12.sp),
            overflow: TextOverflow.ellipsis,
          ),
          Text(
            "Disputes about refunds or delayed refunds.",
            style: TextStyle(fontSize: 10.sp),
            overflow: TextOverflow.ellipsis,
          ),
          const Divider(),
        ],
      ),
    ),
    DropdownMenuItem<IssueDropdownList>(
      value: IssueDropdownList.cancellationProblems,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Cancellation Problems",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12.sp),
            overflow: TextOverflow.ellipsis,
          ),
          Text(
            "Seller doesn't allow order cancellation.",
            style: TextStyle(fontSize: 10.sp),
            overflow: TextOverflow.ellipsis,
          ),
          const Divider(),
        ],
      ),
    ),
    DropdownMenuItem<IssueDropdownList>(
      value: IssueDropdownList.hiddenFees,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Hidden Fees",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12.sp),
            overflow: TextOverflow.ellipsis,
          ),
          Text(
            "Disagreements over undisclosed charges.",
            style: TextStyle(fontSize: 10.sp),
            overflow: TextOverflow.ellipsis,
          ),
          const Divider(),
        ],
      ),
    ),
    DropdownMenuItem<IssueDropdownList>(
      value: IssueDropdownList.poorCustomerService,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Poor Customer Service",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12.sp),
            overflow: TextOverflow.ellipsis,
          ),
          Text(
            "Unresponsive or unhelpful support.",
            style: TextStyle(fontSize: 10.sp),
            overflow: TextOverflow.ellipsis,
          ),
          const Divider(),
        ],
      ),
    ),
    DropdownMenuItem<IssueDropdownList>(
      value: IssueDropdownList.identityTheftOrFraud,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Identity Theft or Fraud",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12.sp),
            overflow: TextOverflow.ellipsis,
          ),
          Text(
            "Personal information compromised.",
            style: TextStyle(fontSize: 10.sp),
            overflow: TextOverflow.ellipsis,
          ),
          const Divider(),
        ],
      ),
    ),
    DropdownMenuItem<IssueDropdownList>(
      value: IssueDropdownList.qualityDiscrepancy,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Quality Discrepancy",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12.sp),
            overflow: TextOverflow.ellipsis,
          ),
          Text(
            "Received product doesn't meet expected quality.",
            style: TextStyle(fontSize: 10.sp),
            overflow: TextOverflow.ellipsis,
          ),
          const Divider(),
        ],
      ),
    ),
    DropdownMenuItem<IssueDropdownList>(
      value: IssueDropdownList.paymentDisputes,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Payment Disputes",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12.sp),
            overflow: TextOverflow.ellipsis,
          ),
          Text(
            "Problems with payment methods or charges.",
            style: TextStyle(fontSize: 10.sp),
            overflow: TextOverflow.ellipsis,
          ),
          const Divider(),
        ],
      ),
    ),
    DropdownMenuItem<IssueDropdownList>(
      value: IssueDropdownList.returnAndExchangeProblems,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Return and Exchange Problems",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12.sp),
            overflow: TextOverflow.ellipsis,
          ),
          Text(
            "Seller's return/exchange policy not followed.",
            style: TextStyle(fontSize: 10.sp),
            overflow: TextOverflow.ellipsis,
          ),
          const Divider(),
        ],
      ),
    ),
    DropdownMenuItem<IssueDropdownList>(
      value: IssueDropdownList.communicationIssues,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Communication Issues",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12.sp),
            overflow: TextOverflow.ellipsis,
          ),
          Text(
            "Poor communication leads to disputes.",
            style: TextStyle(fontSize: 10.sp),
            overflow: TextOverflow.ellipsis,
          ),
          const Divider(),
        ],
      ),
    ),
  ];
}

enum IssueDropdownList {
  productNotAsDescribed,
  nonDelivery,
  defectiveOrDamagedProduct,
  wrongItemShipped,
  lateDelivery,
  refundIssues,
  cancellationProblems,
  hiddenFees,
  poorCustomerService,
  identityTheftOrFraud,
  qualityDiscrepancy,
  paymentDisputes,
  returnAndExchangeProblems,
  communicationIssues,
}
// Method to map enum values to human-readable strings
String getIssueLabel(IssueDropdownList issue) {
  switch (issue) {
    case IssueDropdownList.productNotAsDescribed:
      return 'Product Not as Described';
    case IssueDropdownList.nonDelivery:
      return 'Non-Delivery';
    case IssueDropdownList.defectiveOrDamagedProduct:
      return 'Defective or Damaged Product';
    case IssueDropdownList.wrongItemShipped:
      return 'Wrong Item Shipped';
    case IssueDropdownList.lateDelivery:
      return 'Late Delivery';
    case IssueDropdownList.refundIssues:
      return 'Refund Issues';
    case IssueDropdownList.cancellationProblems:
      return 'Cancellation Problems';
    case IssueDropdownList.hiddenFees:
      return 'Hidden Fees';
    case IssueDropdownList.poorCustomerService:
      return 'Poor Customer Service';
    case IssueDropdownList.identityTheftOrFraud:
      return 'Identity Theft or Fraud';
    case IssueDropdownList.qualityDiscrepancy:
      return 'Quality Discrepancy';
    case IssueDropdownList.paymentDisputes:
      return 'Payment Disputes';
    case IssueDropdownList.returnAndExchangeProblems:
      return 'Return and Exchange Problems';
    case IssueDropdownList.communicationIssues:
      return 'Communication Issues';
  }
}