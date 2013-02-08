import 'dart:html';
import 'dart:uri';

import 'package:dartlero/dartlero.dart';
import 'package:dartlero_category_links/dartlero_category_links.dart';

Categories categories;
Categories ocategories;

void main() {
  CategoryLinksModel categoryLinksModel = new CategoryLinksModel();
  categoryLinksModel.init();
  categories = categoryLinksModel.categories;
  ocategories = categories.order();
}

