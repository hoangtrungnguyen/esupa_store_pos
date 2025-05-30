import 'dart:developer';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
// import 'package:windows_ime_manager/windows_ime_manager.dart';
// Lưu ý: Nếu có dialog thì sau khi show dialog phaỉ focus lại vào màn hình chính để scan barcode
// ví dụ :context.read<CheckOutCubit>().focusNode.requestFocus();

class ScanAreaWidget extends StatefulWidget {
  const ScanAreaWidget({
    super.key,
    this.onData,
    required this.child,
    this.focusNode,
  });

  final void Function(String)? onData;
  final Widget child;
  final FocusNode? focusNode;

  @override
  State<ScanAreaWidget> createState() => _ScanAreaWidgetState();
}

class _ScanAreaWidgetState extends State<ScanAreaWidget> {
  late final FocusNode _focusNode = widget.focusNode ?? FocusNode();
  String _scannedData = '';
  // final _windowsImeManagerPlugin = WindowsImeManager();

  @override
  void initState() {
    super.initState();
    try {
      // _windowsImeManagerPlugin.setLanguageIme(LanguageIme.englishIme);
    } catch (e) {
      log('setLanguageIme $e');
    }
    _focusNode.requestFocus();
    _focusNode.addListener(_onFocusChange);
  }

  @override
  void dispose() {
    _focusNode.removeListener(_onFocusChange);
    _focusNode.dispose();
    super.dispose();
  }

  void _onFocusChange() {
    try {
      if (_focusNode.hasFocus) {
        // _windowsImeManagerPlugin.setLanguageIme(LanguageIme.englishIme);
      } else {
        // _windowsImeManagerPlugin.setLanguageIme(
        //   LanguageIme.japaneseHiraganaIme,
        // );
      }
    } catch (e) {
      log('setLanguageIme: $e');
    }
    if (kDebugMode) {
      // print('ScanAreaWidget ${_focusNode.hasFocus ? 'focused' : 'unfocused'}');
    }
  }

  KeyEventResult _handleKeyPress(KeyEvent event) {
    // log('_handleKeyPress: $event');
    if (event is KeyDownEvent) {
      final key = event.logicalKey.keyLabel;
      // Kiểm tra nếu key không rỗng và là số từ 0-9
      if (key.isNotEmpty && RegExp(r'^[0-9]$').hasMatch(key)) {
        _scannedData += key;
      }
      // Kiểm tra nếu là phím Enter
      log('event.logicalKey: ${event.logicalKey}');
      if (event.logicalKey == LogicalKeyboardKey.enter ||
          event.logicalKey == const LogicalKeyboardKey(0x200000104)) {
        if (widget.onData != null && _scannedData.isNotEmpty) {
          log('_scannedData: $_scannedData');
          widget.onData!(_scannedData.replaceAll('Backspace', ''));
        }

        _scannedData = ''; // Xóa dữ liệu sau khi đã gửi đi
        return KeyEventResult.handled;
      }
    }
    return KeyEventResult.ignored;
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        if (!_focusNode.hasFocus) {
          _focusNode.requestFocus();
        }
      },
      child: KeyboardListener(
        focusNode: _focusNode,
        autofocus: true,
        onKeyEvent: _handleKeyPress,
        child: widget.child,
        // onKey: (node, event) {
        //   log('onKey: $node -- $event');
        //   return KeyEventResult.ignored;
        // },
      ),
    );
  }
}
