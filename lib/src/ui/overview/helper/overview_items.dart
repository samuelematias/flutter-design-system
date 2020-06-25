class Overview {
  final String title;
  final String subtitle;

  Overview(this.title, this.subtitle);
}

List<Overview> overviewItems() {
  return [
    Overview('Introduction', 'A brief introduction to the design system'),
  ];
}
