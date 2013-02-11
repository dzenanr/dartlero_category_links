part of dartlero_category_links;

class Category extends ConceptEntity<Category> {

  String description;
  Links links = new Links();

  Category newEntity() => new Category();

  Category copy() {
    Category category = super.copy();
    category.code = code;
    category.description = description;
    category.links = links.copy();
    return category;
  }

  String toString() {
    return '  {\n '
           '    ${super.toString()}, \n '
           '    description: ${description}\n'
           '  }\n';
  }

  Map<String, Object> toJson() {
    Map<String, Object> entityMap = super.toJson();
    entityMap['description'] = description;
    var entityList = new List<Map<String, Object>>();
    for (Link link in links) {
      entityList.add(link.toJson());
    }
    entityMap['links'] = entityList;
    return entityMap;
  }

  fromJson(Map<String, Object> entityMap) {
    super.fromJson(entityMap);
    description = entityMap['description'];
    List<Map<String, Object>> entityList = entityMap['links'];
    links = new Links();
    for (Map entityMap in entityList) {
      Link link = new Link();
      link.fromJson(entityMap);
      links.add(link);
    }
  }

  bool get onProgramming =>
      description.contains('Programming') ? true : false;

}

class Categories extends ConceptEntities<Category> {

  Categories newEntities() => new Categories();
  Category newEntity() => new Category();

}
