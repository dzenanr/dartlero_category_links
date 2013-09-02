import 'dart:html';
import 'dart:convert';

import 'package:dartlero/dartlero.dart';
import 'package:dartlero_category_links/dartlero_category_links.dart';
import 'package:web_ui/web_ui.dart';

CategoryLinksModel categoryLinksModel;
Categories categories;

load() {
  String json = window.localStorage['dartlero_category_links'];
  if (json == null) {
    categoryLinksModel.init();
  } else {
    categories.fromJson(JSON.decode(json));
  }
  categories.order();
}

save() {
  window.localStorage['dartlero_category_links'] =
      JSON.encode(categories.toJson());
}

main() {
  categoryLinksModel = new CategoryLinksModel();
  categories = categoryLinksModel.categories;
  load();
  categories.internalList = toObservable(categories.internalList);
}

