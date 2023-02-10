import 'package:etiya_assignment/models/user.dart';
import 'package:etiya_assignment/pages/home_page/home_page_repo.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test("Lazy Loading Test", () async {
    final homePageRepo = SubHomePageRepo();
    Map response = await homePageRepo.getUser('', 0);
    int page = 1;
    int total = response["total"];
    int limit = response["limit"];
    List<User> users = response["users"];
    while (true) {
      if (users.length + limit < total) {
        Map response = await homePageRepo.getUser('', limit * page);
        users.addAll(response["users"]);
        page++;
        return;
      }
      break;
    }

    expect(response["users"] is List<User>, true);
    expect(users.length == total, true);
  });
}
