
class CatalogModel {
  static List<Item> items=[
    Item(
      id : 1,
      name: "iPhone 12 Pro",
      des: "Apple iPhone 12th generation",
      price: 999,
      color: "#33505a",
      image: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRISJ6msIu4AU9_M9ZnJVQVFmfuhfyJjEtbUm3ZK11_8IV9TV25-1uM5wHjiFNwKy99w0mR5Hk&usqp=CAc"
    )
  ];
}

class Item{
  final int id;
  final String name;
  final String des;
  final num price;
  final String color;
  final String image;

  Item({required this.id, required this.name, required this.des, required this.price, required this.color, required this.image});

  factory Item.fromMap(Map<dynamic, dynamic> map){
    return Item(
      id : map['id'],
      name : map['name'],
      des : map['des'],
      price : map['price'],
      color : map['color'],
      image : map['image'],
    );
  }

  toMap()=>{
    "id" : id,
    "name" : name,
    "des" : des,
    "price" : price,
    "color" : color,
    "image" : image,
  };
}

