import 'dart:html';

import 'package:dartlero_category_links/dartlero_category_links.dart';
import 'package:web_ui/web_ui.dart';

class CategoryEdit extends WebComponent {
  Categories categories;
  @observable // does not help to see a new description in the list
  Category category;

  update() {
    InputElement description = query("#edit-category-description");
    category.description = description.value;
    //categories.order(); // to see a new description in the list
    var categoryTable = query('#category-table').xtag;
    categoryTable.showCategoryEdit = false;
  }
}