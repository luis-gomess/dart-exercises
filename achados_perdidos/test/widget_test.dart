import 'package:flutter_test/flutter_test.dart';

import 'package:achados_perdidos/main.dart';

void main() {
  testWidgets('Faixa de categorias filtra a lista', (WidgetTester tester) async {
    await tester.pumpWidget(const AchadosApp());

    expect(find.text('Eletrônico'), findsOneWidget);
    expect(find.text('Roupa'), findsOneWidget);
    expect(find.text('Garrafa azul'), findsOneWidget);

    await tester.tap(find.text('Roupa'));
    await tester.pump();
    expect(find.text('Casaco cinza'), findsOneWidget);
    expect(find.text('Garrafa azul'), findsNothing);
  });
}
