import 'package:flutter/foundation.dart';
import 'dart:io';

bool get isWeb => kIsWeb;
bool get isMobile => !isWeb && (Platform.isIOS || Platform.isAndroid);
bool get isDesktop =>
    !isWeb && (Platform.isMacOS || Platform.isWindows || Platform.isLinux);
bool get isApple => !isWeb && (Platform.isIOS || Platform.isMacOS);
bool get isGoogle => !isWeb && (Platform.isAndroid || Platform.isFuchsia);
