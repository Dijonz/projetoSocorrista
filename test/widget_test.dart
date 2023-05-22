// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'dart:typed_data';
import 'package:meta/meta.dart';

import './base.dart';
import 'package:socorrista1/main.dart';

void main() {
  testWidgets('Counter increments smoke test', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(const MyApp());

    // Verify that our counter starts at 0.
    expect(find.text('0'), findsOneWidget);
    expect(find.text('1'), findsNothing);

    // Tap the '+' icon and trigger a frame.
    await tester.tap(find.byIcon(Icons.add));
    await tester.pump();

    // Verify that our counter has incremented.
    expect(find.text('0'), findsNothing);
    expect(find.text('1'), findsOneWidget);
  });
}

class XFile extends XFileBase {
  /// Construct a CrossFile object from its path.
  ///
  /// Optionally, this can be initialized with `bytes` and `length`
  /// so no http requests are performed to retrieve data later.
  ///
  /// `name` may be passed from the outside, for those cases where the effective
  /// `path` of the file doesn't match what the user sees when selecting it
  /// (like in web)
  XFile(
      String super.path, {
        String? mimeType,
        String? name,
        int? length,
        Uint8List? bytes,
        DateTime? lastModified,
        @visibleForTesting CrossFileTestOverrides? overrides,
      }) {
    throw UnimplementedError(
        'CrossFile is not available in your current platform.');
  }

  /// Construct a CrossFile object from its data
  XFile.fromData(
      Uint8List bytes, {
        String? mimeType,
        String? name,
        int? length,
        DateTime? lastModified,
        String? path,
        @visibleForTesting CrossFileTestOverrides? overrides,
      }) : super(path) {
    throw UnimplementedError(
        'CrossFile is not available in your current platform.');
  }
}

/// Overrides some functions of CrossFile for testing purposes
@visibleForTesting
class CrossFileTestOverrides {
  /// Default constructor for overrides
  CrossFileTestOverrides({required this.createAnchorElement});

  /// For overriding the creation of the file input element.
  dynamic Function(String href, String suggestedName) createAnchorElement;
}