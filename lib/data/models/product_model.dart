import '../../domain/entities/product.dart';

class ProductModel extends Product {
  ProductModel({
    required int id,
    required String title,
    required String slug,
    required int price,
    required String description,
    required Category category,
    required List<String> images,
    required String creationAt,
    required String updatedAt,
  }) : super(
    id: id,
    title: title,
    slug: slug,
    price: price,
    description: description,
    category: category,
    images: images,
    creationAt: creationAt,
    updatedAt: updatedAt,
  );

  factory ProductModel.fromJson(Map<String, dynamic> json) {
    return ProductModel(
      id: json['id'],
      title: json['title'],
      slug: json['slug'],
      price: json['price'],
      description: json['description'],
      category: Category.fromJson(json['category']),
      images: List<String>.from(json['images']),
      creationAt: json['creationAt'],
      updatedAt: json['updatedAt'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'title': title,
      'slug': slug,
      'price': price,
      'description': description,
      'category': category.toJson(),
      'images': images,
      'creationAt': creationAt,
      'updatedAt': updatedAt,
    };
  }
}