part of dartlero_category_links;

class Category extends ConceptEntity<Category> {

  String description;
  Links links = new Links();

  Category newEntity() => new Category();

  Category copy() {
    var category = new Category();
    category.code = code;
    category.description = description;
    category.links = links.copy();
    return category;
  }

  String toString() {
    return '  {\n '
           '    ${super.toString()}, \n '
           '    description: ${description}\n'
           '  }';
  }

  bool get onProgramming =>
      description.contains('Programming') ? true : false;

}

class Categories extends ConceptEntities<Category> {

  Categories newEntities() => new Categories();

}
