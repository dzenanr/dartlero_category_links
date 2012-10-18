
#import('dart:uri');

#import('package:unittest/unittest.dart');
#import('package:dartlero/dartlero.dart');
#import('package:dartlero_category_links/dartlero_category_links.dart');

testCategories(Categories categories) {
  group("Testing Categories", () {
    setUp(() {

    });
    tearDown(() {
      categories.clear();
      expect(categories.empty, isTrue);
    });
    test('Add Category', () {
      var category = new Category();
      category.code = 'JavaScript';
      categories.add(category);
      categories.display('Add Category');
    });
  });
}

initDisplayModel() {
  CategoryLinksModel categoryLinksModel = new CategoryLinksModel();
  categoryLinksModel.init();
  categoryLinksModel.display();
}

main() {
  initDisplayModel();

  CategoryLinksModel categoryLinksModel = new CategoryLinksModel();
  Categories categories = categoryLinksModel.categories;
  testCategories(categories);
}