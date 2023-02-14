class Item {
  String title;

  Item({required this.title});

  Item.mapItem(Map e) : title = e['title'] as String;

  Map toItemMap() {
    return {'title': title};
  }
}
