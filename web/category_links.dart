
import 'dart:html';
import 'dart:uri';

import 'package:dartlero/dartlero.dart';
import 'package:dartlero_category_links/dartlero_category_links.dart';

display(Categories categories) {
  String list = '';
  for (var category in categories) {
    if (category.description == null) category.description = 'no description';
    list = '$list ${category.code} Category: ${category.description} <br/><br/>';
    for (var link in category.links) {
      var alink = '''
        <a href="${link.url}">
          ${link.code}
        </a>''';
      if (link.description == null) link.description = 'no description';
      list = '$list &nbsp; &nbsp; ${alink} <br/> &nbsp; &nbsp; '
             '${link.description} <br/><br/>';
    }
  }
  // the HTML library defines a global "document" variable
  document.query('#links').innerHtml = list;
}

void main() {
  CategoryLinksModel categoryLinksModel = new CategoryLinksModel();
  categoryLinksModel.init();
  display(categoryLinksModel.categories);
}

