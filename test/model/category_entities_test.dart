
import 'dart:uri';

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
      Categories categoriesOrderedByCode = categories.order();
      categoriesOrderedByCode.display('Categories Ordered by Code');
    });
  });
}

initModel() {
  CategoryLinksModel categoryLinksModel = new CategoryLinksModel();
  categoryLinksModel.init();
  //categoryLinksModel.display();
}

main() {
  testCategories();
}