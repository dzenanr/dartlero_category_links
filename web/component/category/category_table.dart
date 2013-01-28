import 'package:dartlero_category_links/dartlero_category_links.dart';
import 'package:web_ui/web_ui.dart';

class CategoryTable extends WebComponent {
  Categories categories;
  Category category;

  bool showCategoryLinks = false;

  showLinks(Category category) {
    this.category = category;
    showCategoryLinks = true;
  }
}