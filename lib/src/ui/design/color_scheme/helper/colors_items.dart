class ColorsItems {
  final String colorName;
  final String colorHex;

  ColorsItems(this.colorName, this.colorHex);
}

List<ColorsItems> colorsItems() {
  return [
    ColorsItems('Red', '#C41835'),
    ColorsItems('Green', '#50A773'),
    ColorsItems('Grey 50', '#F2F2F2'),
    ColorsItems('Grey 100', '#DCDCDC'),
  ];
}
