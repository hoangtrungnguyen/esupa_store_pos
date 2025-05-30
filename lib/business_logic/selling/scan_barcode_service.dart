const _userBarcodeLength = 15;
const _customerBarcodeLength = 20;
const productCodeLength = 14;
const _customerCardBarcodeLength = 16;
const _couponBarcodeLength = 17;
const _orderBarcodeLength = 19;

class ScanBarcodeServiceV2 {
  Future<dynamic> detectBarCode(
    String barcode, {
    required dynamic Function() onUserCode,
    required dynamic Function() onCustomerCode,
    required dynamic Function() onCouponCode,
    required dynamic Function() onOrderCode,
    required dynamic Function() onProductCode,
  }) async {
    barcode = barcode.trim();
    if (barcode.isEmpty) return;
    if (barcode.length == _userBarcodeLength) {
      return onUserCode();
    } else if (barcode.length == _customerBarcodeLength ||
        barcode.length == _customerCardBarcodeLength) {
      return onCustomerCode();
    } else if (barcode.length == _couponBarcodeLength) {
      return onCouponCode();
    } else if (barcode.length == _orderBarcodeLength) {
      return onOrderCode();
    } else {
      return onProductCode();
    }
  }
}
