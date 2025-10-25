

class CashPaymentRequest {
  final int orderId;
  final String? notes;

  CashPaymentRequest({required this.orderId, this.notes});

  Map<String, dynamic> toJson() {
    return {
      'orderId': orderId,
      'notes': notes,
    };
  }
}