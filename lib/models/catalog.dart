class Item {
  final String id;
  final String name;
  final String desc;
  final num price;
  final String color;
  final String image;

  Item(
      {required this.id,
      required this.name,
      required this.desc,
      required this.price,
      required this.color,
      required this.image});
}

final products = [
  Item(
      id: "Book",
      name: "Flutter Book",
      desc: "Basics of flutter",
      price: 399,
      color: "#33505a",
      image:
          "https://cdn.pixabay.com/photo/2015/07/27/20/16/book-863418_1280.jpg")
];
