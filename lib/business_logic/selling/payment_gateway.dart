import 'dart:developer';
import 'dart:ffi';

import 'package:ffi/ffi.dart';

final kernel32 = DynamicLibrary.open('kernel32.dll');

typedef CreateFileC =
    Int32 Function(
      Pointer<Utf16> lpFileName,
      Uint32 dwDesiredAccess,
      Uint32 dwShareMode,
      Pointer<Void> lpSecurityAttributes,
      Uint32 dwCreationDisposition,
      Uint32 dwFlagsAndAttributes,
      Int32 hTemplateFile,
    );
typedef CreateFileDart =
    int Function(
      Pointer<Utf16> lpFileName,
      int dwDesiredAccess,
      int dwShareMode,
      Pointer<Void> lpSecurityAttributes,
      int dwCreationDisposition,
      int dwFlagsAndAttributes,
      int hTemplateFile,
    );

typedef WriteFileC =
    Int32 Function(
      Int32 hFile,
      Pointer<Void> lpBuffer,
      Uint32 nNumberOfBytesToWrite,
      Pointer<Uint32> lpNumberOfBytesWritten,
      Pointer<Void> lpOverlapped,
    );
typedef WriteFileDart =
    int Function(
      int hFile,
      Pointer<Void> lpBuffer,
      int nNumberOfBytesToWrite,
      Pointer<Uint32> lpNumberOfBytesWritten,
      Pointer<Void> lpOverlapped,
    );

typedef ReadFileC =
    Int32 Function(
      Int32 hFile,
      Pointer<Void> lpBuffer,
      Uint32 nNumberOfBytesToRead,
      Pointer<Uint32> lpNumberOfBytesRead,
      Pointer<Void> lpOverlapped,
    );
typedef ReadFileDart =
    int Function(
      int hFile,
      Pointer<Void> lpBuffer,
      int nNumberOfBytesToRead,
      Pointer<Uint32> lpNumberOfBytesRead,
      Pointer<Void> lpOverlapped,
    );

class PaymentService {
  Future<String> getSteRaPaymentResult(
    int amount,
    String method, {
    bool isRefun = false,
    bool isCancel = false,
    bool trainingMode = false,
  }) async {
    // set mặc định pass khi thanh toán qua stera ở các môi trường này
    // nếu cần test stera của môi trường nào thì bỏ mt đó ra
    // môi trường uat khách và prod mặc định là phải check qua stera
    if (false) {
      return '0';
    }

    String methodName = 'AuthorizeSales';
    if (isRefun) {
      methodName = 'AuthorizeRefund';
    } else if (isCancel) {
      methodName = 'AuthorizeVoid';
    }
    final createFile = kernel32.lookupFunction<CreateFileC, CreateFileDart>(
      'CreateFileW',
    );
    final writeFile = kernel32.lookupFunction<WriteFileC, WriteFileDart>(
      'WriteFile',
    );
    final readFile = kernel32.lookupFunction<ReadFileC, ReadFileDart>(
      'ReadFile',
    );

    final pipeName = r'\\.\pipe\testpipe'.toNativeUtf16();
    final handle = createFile(
      pipeName,
      0x40000000 | 0x80000000,
      // GENERIC_READ | GENERIC_WRITE
      0,
      nullptr,
      3,
      // OPEN_EXISTING
      0,
      0,
    );

    if (handle == -1) {
      log('getSteRaPaymentResult: Failed to connect to pipe');
      return Future.value('Failed to connect to pipe');
    }
    String params =
        '"SequenceNumber": 100, "Amount": $amount, "TaxOthers": 0,"Timeout": -1,"ClaimDevice": 1000,"PaymentMedia": $method, "TrainingMode": $trainingMode';
    if (isCancel) {
      params = '$params, "AdditionalSecurityInformation" : ""';
    }

    final strMessage = '$methodName\n{$params}\n';

    final message = strMessage.toNativeUtf8();

    log('getSteRaPaymentResult string message: $strMessage');
    log('getSteRaPaymentResult message: $message');

    final bytesWritten = calloc<Uint32>();
    final success = writeFile(
      handle,
      message.cast<Void>(),
      message.length,
      bytesWritten,
      nullptr,
    );

    if (success == 0) {
      calloc.free(message);
      calloc.free(bytesWritten);
      return Future.value('Failed to write to pipe');
    }

    final buffer = calloc<Uint8>(256);
    final bytesRead = calloc<Uint32>();
    final readSuccess = readFile(
      handle,
      buffer.cast<Void>(),
      256,
      bytesRead,
      nullptr,
    );

    String result;
    if (readSuccess != 0) {
      result = buffer.cast<Utf8>().toDartString(length: bytesRead.value);
    } else {
      result = 'Failed to read from pipe';
    }

    calloc.free(message);
    calloc.free(bytesWritten);
    calloc.free(buffer);
    calloc.free(bytesRead);

    return Future.value(result);
  }
}
