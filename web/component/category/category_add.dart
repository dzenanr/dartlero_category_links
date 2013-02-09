import 'dart:html';

import 'package:dartlero_category_links/dartlero_category_links.dart';
import 'package:web_ui/web_ui.dart';

class CategoryAdd extends WebComponent {
  Categories categories;

  add() {
    InputElement code = query("#add-category-code");
    InputElement description = query("#add-category-description");
    Element message = query("#add-category-message");
    var error = false;
    message.text = '';
    if (code.value.trim() == '') {
      message.text = 'category name is mandatory; ${message.text}';
      error = true;
    }
    if (!error) {
      var category = new Category();
	  category.code = code.value;
	  category.description = description.value;
      if (categories.add(category)) {
        message.text = 'added';
        var categoryTable = document.query('x-category-table').xtag;
        categoryTable.categories.order();
      } else {
        message.text = 'category name already in use';
      }
    }
  }

}