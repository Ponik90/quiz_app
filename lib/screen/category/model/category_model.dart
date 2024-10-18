class CategoryModel {
  List<ListModel>? category = [];

  CategoryModel({this.category});

  factory CategoryModel.mapToModel(Map m1) {
    List l1 = m1['category'];
    return CategoryModel(
      category: l1
          .map(
            (e) => ListModel.mapToModel(e),
          )
          .toList(),
    );
  }
}

class ListModel {
  String? name;
  int? id;

  ListModel({this.name, this.id});

  factory ListModel.mapToModel(Map m1) {
    return ListModel(
      name: m1['name'],
      id: m1['id'],
    );
  }
}
