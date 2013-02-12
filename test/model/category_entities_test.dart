import 'package:unittest/unittest.dart';
import 'package:dartlero/dartlero.dart';
import 'package:dartlero_category_links/dartlero_category_links.dart';

testCategories() {
  Categories categories;
  group("Testing Categories", () {
    setUp(() {
      CategoryLinksModel categoryLinksModel = new CategoryLinksModel();
      categoryLinksModel.init();
      categories = categoryLinksModel.categories;
    });
    tearDown(() {
      categories.clear();
      expect(categories.isEmpty, isTrue);
    });
    test('Add Category', () {
      var category = new Category();
      category.code = 'JavaScript';
      categories.add(category);
      categories.display('Add Category');
    });
    test('Order Categories', () {
      categories.order();
      categories.display('Categories Ordered by Code');
    });
    test('From Categories to JSON', () {
      List<Map<String, Object>> json = categories.toJson();
      expect(json, isNotNull);
      print(json);
    });
    test('From JSON to Categories', () {
      List<Map<String, Object>> json = categories.toJson();
      categories.clear();
      expect(categories.isEmpty, isTrue);
      categories.fromJson(json);
      expect(categories.isEmpty, isFalse);
      categories.display('From JSON to categories');
    });
  });
}

main() {
  testCategories();
}