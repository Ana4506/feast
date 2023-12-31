import 'package:equatable/equatable.dart';

class Category extends Equatable {
  final String id;
  final String name;
  final String description;
  final String imageUrl;
  final int index;

  Category({
    required this.id,
    required this.name,
    required this.description,
    required this.imageUrl,
    required this.index,
  });

  @override
  List<Object?> get props => [id, name, description, imageUrl, index];

  factory Category.fromSnapshot(Map<String, dynamic> snap) {
    return Category(
      id: snap['id'].toString(),
      name: snap['name'],
      description: snap['description'],
      imageUrl: snap['imageUrl'],
      index: snap['index'],
    );
  }

  static List<Category> categories = [
    Category(
      id: '1',
      name: 'Drinks',
      description: 'This is a test description',
      imageUrl: 'assets/drinks.png',
      index: 0,
    ),
    Category(
      id: '2',
      name: 'Pizza',
      description: 'This is a test description',
      imageUrl: 'assets/pizza.png',
      index: 1,
    ),
    Category(
      id: '3',
      name: 'Burger',
      description: 'This is a test description',
      imageUrl: 'assets/burger.png',
      index: 2,
    ),
    Category(
      id: '4',
      name: 'Desserts',
      description: 'This is a test description',
      imageUrl: 'assets/desserts.png',
      index: 3,
    ),
    Category(
      id: '5',
      name: 'Salads',
      description: 'This is a test description',
      imageUrl: 'assets/burger.png',
      index: 4,
    ),
    Category(
      id: '6',
      name: 'Rolls',
      description: 'This is a test description',
      imageUrl: 'assets/rolls.png',
      index: 0,
    ),
    Category(
      id: '7',
      name: 'Maggi',
      description: 'This is a test description',
      imageUrl: 'assets/pizza.png',
      index: 1,
    ),
    Category(
      id: '8',
      name: 'Momos',
      description: 'This is a test description',
      imageUrl: 'assets/momos.png',
      index: 2,
    ),
    Category(
      id: '9',
      name: 'Patty',
      description: 'This is a test description',
      imageUrl: 'assets/patties.png',
      index: 3,
    ),
    Category(
      id: '10',
      name: 'Salads',
      description: 'This is a test description',
      imageUrl: 'assets/burger.png',
      index: 4,
    ),
  ];
}
