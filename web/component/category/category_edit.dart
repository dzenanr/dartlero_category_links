import 'dart:html';

import 'package:dartlero_category_links/dartlero_category_links.dart';
import 'package:web_ui/web_ui.dart';

class CategoryEdit extends WebComponent {
  Categories categories;
  Category category;

  update() {
    InputElement description = query("#edit-category-description");
    category.description = description.value;
    var categoryTable = document.query('x-category-table').xtag;
    categoryTable.showCategoryEdit = false;
  }

}