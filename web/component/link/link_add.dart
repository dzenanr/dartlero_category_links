import 'dart:html';
import 'dart:uri';

import 'package:dartlero_category_links/dartlero_category_links.dart';
import 'package:web_ui/web_ui.dart';

class LinkAdd extends WebComponent {
  Links links;

  add() {
    InputElement code = query("#link-code");
    InputElement webLink = query("#link-url");
    InputElement description = query("#link-description");
    LabelElement message = query("#link-message");
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
      var link = new Link();
      link.code = code.value;
      var linkString = webLink.value;
      link.url = new Uri.fromString(linkString);
      link.description = description.value;
      if (links.add(link)) {
        message.text = 'added';
        //links.order();
      } else {
        message.text = 'web link name already in use';
      }
    }
  }

}

