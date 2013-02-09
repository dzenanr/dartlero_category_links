import 'dart:html';

import 'package:dartlero_category_links/dartlero_category_links.dart';
import 'package:web_ui/web_ui.dart';

class LinkTable extends WebComponent {
  Category category;
  Links links;
  Link link;

  bool showLinkAdd = false;
  bool showLinkEdit = false;

  add() {
    ButtonElement addLink = query("#addLinkButton");
    if (addLink.text == 'Show Add') {
      showLinkAdd = true;
      addLink.text = 'Hide Add';
    } else {
      showLinkAdd = false;
      addLink.text = 'Show Add';
    }
  }

  edit(link) {
    showLinkEdit = true;
    this.link = link;
  }

  delete(link) {
    links.remove(link);
  }

}