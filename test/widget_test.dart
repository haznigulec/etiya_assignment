import 'package:etiya_assignment/models/user.dart';
import 'package:etiya_assignment/pages/home_page/home_page_repo.dart';
import 'package:etiya_assignment/widgets/list_tile.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets('MyListTile Test', (tester) async {
    final homePageRepo = SubHomePageRepo();
    Map response = await homePageRepo.getUser('', 0);
    User testUser = response["users"].first;
    testUser.firstName += "abcdefghijklmno";
    await tester.pumpWidget(MyListTile(user: testUser));

    final titleFinder = find.text('abcdefghijklmno');

    expect(titleFinder, findsOneWidget);
  });
}
