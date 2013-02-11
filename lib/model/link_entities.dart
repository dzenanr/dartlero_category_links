part of dartlero_category_links;

class Link extends ConceptEntity<Link> {

  Uri url;
  String description;

  Link newEntity() => new Link();

  Link copy() {
    Link link = super.copy();
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
           '  }\n';
  }

  Map<String, Object> toJson() {
    Map<String, Object> entityMap = super.toJson();
    entityMap['url'] = url.toString();
    entityMap['description'] = description;
    return entityMap;
  }

  fromJson(Map<String, Object> entityMap) {
    super.fromJson(entityMap);
    url = new Uri.fromString('url');
    description = entityMap['description'];
  }

  bool get onProgramming =>
      description.contains('Programming') ? true : false;

  int codeCompareTo(Link other) {
    return code.compareTo(other.code);
  }

}

class Links extends ConceptEntities<Link> {

  Links newEntities() => new Links();
  Link newEntity() => new Link();

}

