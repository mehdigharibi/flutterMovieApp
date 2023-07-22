class MovieModel {
  String? imageAsset;
  String? movieName;
  String? movieRating;
  String? year;
  List<Map>? cast;
  List<Map>? comments;

  MovieModel(
      {this.imageAsset,
      this.movieName,
      this.movieRating,
      this.year,
      this.comments,
      this.cast});
}

final forYouImages = [
  MovieModel(imageAsset: "assets/images/pv_1.jpg"),
  MovieModel(imageAsset: "assets/images/pv_2.jpg"),
  MovieModel(imageAsset: "assets/images/pv_3.jpg"),
  MovieModel(imageAsset: "assets/images/pv_4.jpg"),
];

final popularImages = [
  MovieModel(
      imageAsset: "assets/images/pop_1.jpg",
      movieName: "The Flash",
      cast: [
        {"name": " sasha Calle", "image": "assets/images/ezramiller.jpg"},
        {"name": "Sasha Calle", "image": "assets/images/sashaCalle.jpg"},
        {"name": "MICHAEL KEATOn", "image": "assets/images/actor3.jpg"}
      ],
      year: "2023",
      movieRating: "7.3"),
  MovieModel(
      movieName: "His Only Son",
      imageAsset: 'assets/images/hisonlyson.jpg',
      year: '2023',
      movieRating: "6.1"),
  MovieModel(
      movieName: "Gray Matter",
      imageAsset: 'assets/images/graymatter.jpg',
      year: '2023',
      movieRating: "4.8"),
  MovieModel(
      movieName: "Among The Beasts",
      imageAsset: 'assets/images/amongthebeasts.jpg',
      year: '2023',
      movieRating: "6"),
  MovieModel(
      movieName: "The Machine",
      imageAsset: 'assets/images/themachine.jpg',
      year: '2023',
      movieRating: "5.9"),
  MovieModel(
      movieName: "Cabin Girl",
      imageAsset: 'assets/images/cabingirl.jpg',
      year: '2023',
      movieRating: "5.1")
];

final generList = [
  MovieModel(movieName: "Action", imageAsset: "assets/images/cat_action.jpg"),
  MovieModel(movieName: "Family", imageAsset: "assets/images/cat_family.jpg"),
  MovieModel(movieName: "History", imageAsset: "assets/images/cat_history.jpg"),
  MovieModel(
      movieName: "Animation", imageAsset: "assets/images/cat_animation.jpg")
];
