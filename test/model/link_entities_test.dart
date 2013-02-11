import 'dart:uri';

import 'package:unittest/unittest.dart';
import 'package:dartlero/dartlero.dart';
import 'package:dartlero_category_links/dartlero_category_links.dart';

testCategoryLinks(Category category) {
  group("Testing Category Links", () {
    setUp(() {

    });
    tearDown(() {
      category.links.clear();
      expect(category.links.isEmpty, isTrue);
    });
    test('Add Category Link', () {
      var link = new Link();
      link.code = 'Dart Editor';
      link.url = new Uri.fromString('http://www.dartlang.org/docs/editor/');
      category.links.add(link);
      category.links.display('Add Category Link');
    });
  });
}

main() {
  CategoryLinksModel categoryLinksModel = new CategoryLinksModel();
  categoryLinksModel.init();
  Categories categories = categoryLinksModel.categories;
  Category dartCategory = categories.find('Dart');
  testCategoryLinks(dartCategory);
}