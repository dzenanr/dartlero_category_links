import 'package:dartlero/dartlero.dart';
import 'package:dartlero_category_links/dartlero_category_links.dart';

CategoryLinksModel categoryLinksModel;
Categories categories;

load() {
  categoryLinksModel.load();
}

save() {
  categoryLinksModel.save();
}

main() {
  categoryLinksModel = new CategoryLinksModel();
  categories = categoryLinksModel.categories;
  load();
}

