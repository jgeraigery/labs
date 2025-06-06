// Copyright (c) 2025, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'dart:io';
import 'dart:math';
import 'dart:typed_data';

String createTemp(String testName) =>
    Directory.systemTemp.createTempSync(testName).absolute.path;
void deleteTemp(String path) => Directory(path).deleteSync(recursive: true);

Uint8List randomUint8List(int length, {int? seed}) {
  final random = Random(seed);
  final l = Uint8List(length);
  for (var i = 0; i < length; ++i) {
    l[i] = random.nextInt(255);
  }
  return l;
}
