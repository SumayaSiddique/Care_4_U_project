class Category {
  String? name;
  String? imgUrl;
  Category({
    this.name,
    this.imgUrl,
  });
}

List<Category> categories = [
  Category(
    name: 'Men',
    imgUrl: 'img/Section/men.jpg',
  ),
  Category(
    name: 'Women',
    imgUrl: 'img/Section/women.jpg',
  ),
  Category(
    name: 'Yoga',
    imgUrl: 'img/Section/yoga.jpg',
  )
];
