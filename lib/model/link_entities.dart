
class Link extends ConceptEntity<Link> {

  Uri url;
  String description;

  Link newEntity() => new Link();

  Link copy() {
    var link = new Link();
    link.code = code;
    link.url = url;
    link.description = description;
    return link;
  }

  String toString() {
    return '  {\n '
           '    ${super.toString()}, \n '
           '    link: ${url}, \n '
           '    description: ${description}\n'
           '  }';
  }

  bool get onProgramming =>
      description.contains('Programming') ? true : false;

  int codeCompareTo(Link other) {
    return code.compareTo(other.code);
  }

}

class Links extends ConceptEntities<Link> {

  Links newEntities() => new Links();

}

