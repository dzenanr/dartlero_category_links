import 'dart:html';
import 'dart:uri';

import 'package:dartlero_category_links/dartlero_category_links.dart';
import 'package:web_ui/web_ui.dart';

class LinkEdit extends WebComponent {
  Category category;
  Links links;
  Link link;

  update() {
    InputElement code = query("#edit-link-code");
    InputElement webLink = query("#edit-link-url");
    InputElement description = query("#edit-link-description");
    Element message = query("#edit-link-message");
    var error = false;
    message.text = '';
    if (code.value.trim() == '') {
      message.text = 'web link name is mandatory; ${message.text}';
      error = true;
    }
    if (webLink.value.trim() == '') {
      message.text = 'web link is mandatory; ${message.text}';
      error = true;
    }
    if (!error) {
      if (link.code != code.value) {
        var existingLink = links.find(code.value);
        if (existingLink != null) {
          message.text = 'web link name already in use';
        } else {
          links.remove(link);
          var link = new Link();
          link.code = code.value;
          link.url = new Uri(webLink.value);
          link.description = description.value;
          if (links.add(link)) {
            message.text = 'added';
          } else {
            message.text = 'not added';
          }
        }
      } else {
        link.url = new Uri(webLink.value);
        link.description = description.value;
      }
      links.order(); // even if code not changed, to see the updated list
      var linkTable = query('#link-table').xtag;
      linkTable.showLinkEdit = false;
    }
  }
}

