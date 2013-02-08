import 'dart:html';

import 'package:dartlero_category_links/dartlero_category_links.dart';
import 'package:web_ui/web_ui.dart';

class LinkTable extends WebComponent {
  Links links;
  Links olinks;
  
  bool showLinkAdd = false;
  
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
  
}