/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports
// ignore_for_file: use_super_parameters
// ignore_for_file: type_literal_in_constant_pattern

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod_client/serverpod_client.dart' as _i1;

abstract class Shoes extends _i1.SerializableEntity {
  Shoes._({
    this.id,
    required this.name,
    required this.price,
    required this.ratings,
    required this.brand,
    required this.review,
    required this.size,
  });

  factory Shoes({
    int? id,
    required String name,
    required int price,
    required double ratings,
    required String brand,
    required String review,
    required List<int> size,
  }) = _ShoesImpl;

  factory Shoes.fromJson(
    Map<String, dynamic> jsonSerialization,
    _i1.SerializationManager serializationManager,
  ) {
    return Shoes(
      id: serializationManager.deserialize<int?>(jsonSerialization['id']),
      name: serializationManager.deserialize<String>(jsonSerialization['name']),
      price: serializationManager.deserialize<int>(jsonSerialization['price']),
      ratings: serializationManager
          .deserialize<double>(jsonSerialization['ratings']),
      brand:
          serializationManager.deserialize<String>(jsonSerialization['brand']),
      review:
          serializationManager.deserialize<String>(jsonSerialization['review']),
      size: serializationManager
          .deserialize<List<int>>(jsonSerialization['size']),
    );
  }

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  int? id;

  String name;

  int price;

  double ratings;

  String brand;

  String review;

  List<int> size;

  Shoes copyWith({
    int? id,
    String? name,
    int? price,
    double? ratings,
    String? brand,
    String? review,
    List<int>? size,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      if (id != null) 'id': id,
      'name': name,
      'price': price,
      'ratings': ratings,
      'brand': brand,
      'review': review,
      'size': size.toJson(),
    };
  }
}

class _Undefined {}

class _ShoesImpl extends Shoes {
  _ShoesImpl({
    int? id,
    required String name,
    required int price,
    required double ratings,
    required String brand,
    required String review,
    required List<int> size,
  }) : super._(
          id: id,
          name: name,
          price: price,
          ratings: ratings,
          brand: brand,
          review: review,
          size: size,
        );

  @override
  Shoes copyWith({
    Object? id = _Undefined,
    String? name,
    int? price,
    double? ratings,
    String? brand,
    String? review,
    List<int>? size,
  }) {
    return Shoes(
      id: id is int? ? id : this.id,
      name: name ?? this.name,
      price: price ?? this.price,
      ratings: ratings ?? this.ratings,
      brand: brand ?? this.brand,
      review: review ?? this.review,
      size: size ?? this.size.clone(),
    );
  }
}
