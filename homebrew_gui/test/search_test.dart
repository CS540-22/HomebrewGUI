import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:homebrew_gui/search_bar.dart';

void main(){


    testWidgets('SearchBar allows to type and enter text', (WidgetTester tester) async {
        await tester.pumpWidget(MySearchBarState());
        
        // select and type in test package into the input
        await tester.tap(find.byType(TextField));
        await tester.enterText(find.byType(TextField), 'test package');

        expect(find.text('test package'), findsOneWidget);
        
    });
}
