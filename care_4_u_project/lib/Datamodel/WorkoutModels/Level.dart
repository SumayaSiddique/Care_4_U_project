class Level {
  String? name;
  String? imgUrl;
  Level({
    this.name,
    this.imgUrl,
  });
}

List<Level> levels = [
  Level(
    name: 'Beginner',
    imgUrl: 'img/Level/beginner.jpg',
  ),
  Level(
    name: 'Intermediate',
    imgUrl: 'img/Level/intermediate.jpg',
  ),
  Level(
    name: 'Advanced',
    imgUrl: 'img/Level/advanced.jpg',
  )
];

List<Level> womenLevels = [
  Level(
    name: 'Beginner',
    imgUrl: 'img/Level/WomenBeginner.jpg',
  ),
  Level(
    name: 'Intermediate',
    imgUrl: 'img/Level/WomenIntermediate.jpg',
  ),
  Level(
    name: 'Advanced',
    imgUrl: 'img/Level/WomenAdvanced.jpg',
  )
];

List<Level> yogaLevels = [
  Level(
    name: 'Beginner',
    imgUrl: 'img/Level/beginnerYoga.jpg',
  ),
  Level(
    name: 'Advanced',
    imgUrl: 'img/Level/advancedYoga.jpg',
  )
];
