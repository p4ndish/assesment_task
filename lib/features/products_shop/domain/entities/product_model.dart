class ProductModel { 
  final double rating;
  final String id;
  final String title;
  final int price;
  final String description;
  final String category;
  final String image;
  ProductModel(
    {required this.rating, 
    required this.id, 
    required this.title, 
    required this.price, 
    required this.description, 
    required this.category, 
    required this.image});

  factory ProductModel.fromJson(Map<String, dynamic> json) => ProductModel( 
    id: json['_id'],
    rating: json['rating']['count'].toDouble(),
    title: json['title'],
    price: json['price'].toInt(),
    description: json['description'],
    category: json['category'], 
    image: json['image']
  );

  
  


}


    // {
    //   "rating": {
    //     "rate": 0,
    //     "count": 0
    //   },
    //   "_id": "660957ee2f8fd9177bc17d25",
    //   "title": "new shoes ",
    //   "price": 100,
    //   "description": "new shoe created chgfyj!! ",
    //   "category": "new category",
    //   "image": "https://thursdayboots.com/cdn/shop/products/1024x1024-Captain-Whiskey-3.4.jpg?v=1658505769&width=816",
    //   "createdAt": "2024-03-31T12:32:46.875Z",
    //   "updatedAt": "2024-04-02T07:35:30.155Z",
    //   "__v": 0
    // },