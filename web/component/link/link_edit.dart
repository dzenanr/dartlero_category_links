import 'dart:html';
import 'dart:uri';

import 'package:dartlero_category_links/dartlero_category_links.dart';
import 'package:web_ui/web_ui.dart';

class LinkEdit extends WebComponent {
  Category category;
  Links links;
  Link link;

  update() {
    InputElement webLink = query("#edit-link-url");
    InputElement description = query("#edit-link-description");
    Element message = query("#edit-link-message");
    var error = false;
    message.text = '';
    if (webLink.value.trim() == '') {
      message.text = 'web link is mandatory; ${message.text}';
      error = true;
    }
    if (!error) {
      link.url = new Uri(webLink.value);
      link.description = description.value;
      var linkTable = query('#link-table').xtag;
      linkTable.showLinkEdit = false;
    }
  }

}

