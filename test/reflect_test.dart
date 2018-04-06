// Copyright (c) 2015, the Dart Team. All rights reserved. Use of this
// source code is governed by a BSD-style license that can be found in
// the LICENSE file.

// File used to test reflectable code generation.
// Uses `reflect`.

library test_reflectable.test.reflect_test;

import 'package:reflectable/reflectable.dart';
import 'package:test/test.dart';
import 'reflect_test.reflectable.dart';

class MyReflectable extends Reflectable {
  const MyReflectable();
}

const myReflectable = const MyReflectable();

@myReflectable
class A {}

main() {
  initializeReflectable();

  test('reflect', () {
    InstanceMirror instanceMirror = myReflectable.reflect(new A());
    expect(instanceMirror == null, isFalse);
  });
}
