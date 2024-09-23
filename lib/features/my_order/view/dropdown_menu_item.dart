import 'package:flutter/material.dart';


// Define the list of dropdown items
List<DropdownMenuItem<IssueDropdownList>> getStaticDropdownMenuItems() {
  return [
    const DropdownMenuItem<IssueDropdownList>(
      value: IssueDropdownList.productNotAsDescribed,
      child: Text(
        "1. Product Not as Described:\nReceived item doesn't match the description or photos.",
      ),
    ),
    const DropdownMenuItem<IssueDropdownList>(
      value: IssueDropdownList.nonDelivery,
      child: Text(
        "2. Non-Delivery:\nItem not delivered on time or at all.",
      ),
    ),
    const DropdownMenuItem<IssueDropdownList>(
      value: IssueDropdownList.defectiveOrDamagedProduct,
      child: Text(
        "3. Defective or Damaged Product:\nProduct arrives damaged or with defects.",
      ),
    ),
    const DropdownMenuItem<IssueDropdownList>(
      value: IssueDropdownList.wrongItemShipped,
      child: Text(
        "4. Wrong Item Shipped:\nIncorrect item, color, size, or variant sent.",
      ),
    ),
    const DropdownMenuItem<IssueDropdownList>(
      value: IssueDropdownList.lateDelivery,
      child: Text(
        "5. Late Delivery:\nProduct arrives after promised date.",
      ),
    ),
    const DropdownMenuItem<IssueDropdownList>(
      value: IssueDropdownList.refundIssues,
      child: Text(
        "6. Refund Issues:\nDisputes about refunds or delayed refunds.",
      ),
    ),
    const DropdownMenuItem<IssueDropdownList>(
      value: IssueDropdownList.cancellationProblems,
      child: Text(
        "7. Cancellation Problems:\nSeller doesn't allow order cancellation.",
      ),
    ),
    const DropdownMenuItem<IssueDropdownList>(
      value: IssueDropdownList.hiddenFees,
      child: Text(
        "8. Hidden Fees:\nDisagreements over undisclosed charges.",
      ),
    ),
    const DropdownMenuItem<IssueDropdownList>(
      value: IssueDropdownList.poorCustomerService,
      child: Text(
        "9. Poor Customer Service:\nUnresponsive or unhelpful support.",
      ),
    ),
    const DropdownMenuItem<IssueDropdownList>(
      value: IssueDropdownList.identityTheftOrFraud,
      child: Text(
        "10. Identity Theft or Fraud:\nPersonal information compromised.",
      ),
    ),
    const DropdownMenuItem<IssueDropdownList>(
      value: IssueDropdownList.qualityDiscrepancy,
      child: Text(
        "11. Quality Discrepancy:\nReceived product doesn't meet expected quality.",
      ),
    ),
    const DropdownMenuItem<IssueDropdownList>(
      value: IssueDropdownList.paymentDisputes,
      child: Text(
        "12. Payment Disputes:\nProblems with payment methods or charges.",
      ),
    ),
    const DropdownMenuItem<IssueDropdownList>(
      value: IssueDropdownList.returnAndExchangeProblems,
      child: Text(
        "13. Return and Exchange Problems:\nSeller's return/exchange policy not followed.",
      ),
    ),
    const DropdownMenuItem<IssueDropdownList>(
      value: IssueDropdownList.communicationIssues,
      child: Text(
        "14. Communication Issues:\nPoor communication leads to disputes.",
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
