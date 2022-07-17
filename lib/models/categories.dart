
class CategoryModel{
  static List<Category> ProductType=[
    Category(
      id : 1,
      name: "Laptops",
      totalItem: 881,
      color: "#33505a",
      image:"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT79_8uf63wJmuy9WcHwN8IE9Ustx1Di3Ciew&usqp=CAU"
    )
  ];
}

class Category{
  final int id;
  final String name;
  final int totalItem;
  final String color;
  final String image;

  Category({required this.id, required this.name, required this.totalItem, required this.color, required this.image});

  factory Category.fromMap(Map<dynamic, dynamic>map){
    return Category(
      id: map['id'],
      name: map['name'],
      totalItem: map['totalItem'],
      color: map['color'],
      image: map['image']
    );
  }
}