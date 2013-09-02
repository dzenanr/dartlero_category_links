import 'dart:html';

import 'package:dartlero_category_links/dartlero_category_links.dart';
import 'package:web_ui/web_ui.dart';

class CategoryTable extends WebComponent {
  Categories categories;
  Category category;
  @observable
  bool showCategoryAdd = false;
  @observable
  bool showCategoryEdit = false;
  @observable
  bool showCategoryLinks = false;

  add() {
    ButtonElement addCategory = query("#addCategoryButton");
    if (addCategory.text == 'Show Add') {
      showCategoryAdd = true;
      addCategory.text = 'Hide Add';
    } else {
      showCategoryAdd = false;
      addCategory.text = 'Show Add';
    }
  }

  edit(Category category) {
    showCategoryEdit = true;
    this.category = category;
  }

  delete(Category category) {
    categories.remove(category);
    showCategoryLinks = false;
  }

  showLinks(Category category) {
    ButtonElement categoryLinks = query("#${category.code}");
    if (!showCategoryLinks && categoryLinks.text == 'Show') {
      showCategoryLinks = true;
      this.category = category;
      category.links.internalList = toObservable(category.links.internalList);
      category.links.order();
      categoryLinks.text = 'Hide';
    } else if (showCategoryLinks && categoryLinks.text == 'Hide') {
      showCategoryLinks = false;
      categoryLinks.text = 'Show';
    }
  }
}