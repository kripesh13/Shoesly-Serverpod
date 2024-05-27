/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports
// ignore_for_file: use_super_parameters
// ignore_for_file: type_literal_in_constant_pattern

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod/serverpod.dart' as _i1;
import 'package:serverpod_serialization/serverpod_serialization.dart';

abstract class Shoes extends _i1.TableRow {
  Shoes._({
    int? id,
    required this.name,
    required this.price,
    required this.ratings,
    required this.brand,
    required this.review,
    required this.size,
  }) : super(id);

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

  static final t = ShoesTable();

  static const db = ShoesRepository._();

  String name;

  int price;

  double ratings;

  String brand;

  String review;

  List<int> size;

  @override
  _i1.Table get table => t;

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

  @override
  @Deprecated('Will be removed in 2.0.0')
  Map<String, dynamic> toJsonForDatabase() {
    return {
      'id': id,
      'name': name,
      'price': price,
      'ratings': ratings,
      'brand': brand,
      'review': review,
      'size': size,
    };
  }

  @override
  Map<String, dynamic> allToJson() {
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

  @override
  @Deprecated('Will be removed in 2.0.0')
  void setColumn(
    String columnName,
    value,
  ) {
    switch (columnName) {
      case 'id':
        id = value;
        return;
      case 'name':
        name = value;
        return;
      case 'price':
        price = value;
        return;
      case 'ratings':
        ratings = value;
        return;
      case 'brand':
        brand = value;
        return;
      case 'review':
        review = value;
        return;
      case 'size':
        size = value;
        return;
      default:
        throw UnimplementedError();
    }
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.find instead.')
  static Future<List<Shoes>> find(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<ShoesTable>? where,
    int? limit,
    int? offset,
    _i1.Column? orderBy,
    List<_i1.Order>? orderByList,
    bool orderDescending = false,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.find<Shoes>(
      where: where != null ? where(Shoes.t) : null,
      limit: limit,
      offset: offset,
      orderBy: orderBy,
      orderByList: orderByList,
      orderDescending: orderDescending,
      useCache: useCache,
      transaction: transaction,
    );
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.findRow instead.')
  static Future<Shoes?> findSingleRow(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<ShoesTable>? where,
    int? offset,
    _i1.Column? orderBy,
    bool orderDescending = false,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.findSingleRow<Shoes>(
      where: where != null ? where(Shoes.t) : null,
      offset: offset,
      orderBy: orderBy,
      orderDescending: orderDescending,
      useCache: useCache,
      transaction: transaction,
    );
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.findById instead.')
  static Future<Shoes?> findById(
    _i1.Session session,
    int id,
  ) async {
    return session.db.findById<Shoes>(id);
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.deleteWhere instead.')
  static Future<int> delete(
    _i1.Session session, {
    required _i1.WhereExpressionBuilder<ShoesTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.db.delete<Shoes>(
      where: where(Shoes.t),
      transaction: transaction,
    );
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.deleteRow instead.')
  static Future<bool> deleteRow(
    _i1.Session session,
    Shoes row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteRow(
      row,
      transaction: transaction,
    );
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.update instead.')
  static Future<bool> update(
    _i1.Session session,
    Shoes row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.update(
      row,
      transaction: transaction,
    );
  }

  @Deprecated(
      'Will be removed in 2.0.0. Use: db.insert instead. Important note: In db.insert, the object you pass in is no longer modified, instead a new copy with the added row is returned which contains the inserted id.')
  static Future<void> insert(
    _i1.Session session,
    Shoes row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insert(
      row,
      transaction: transaction,
    );
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.count instead.')
  static Future<int> count(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<ShoesTable>? where,
    int? limit,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.count<Shoes>(
      where: where != null ? where(Shoes.t) : null,
      limit: limit,
      useCache: useCache,
      transaction: transaction,
    );
  }

  static ShoesInclude include() {
    return ShoesInclude._();
  }

  static ShoesIncludeList includeList({
    _i1.WhereExpressionBuilder<ShoesTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<ShoesTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<ShoesTable>? orderByList,
    ShoesInclude? include,
  }) {
    return ShoesIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(Shoes.t),
      orderDescending: orderDescending,
      orderByList: orderByList?.call(Shoes.t),
      include: include,
    );
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

class ShoesTable extends _i1.Table {
  ShoesTable({super.tableRelation}) : super(tableName: 'shoes') {
    name = _i1.ColumnString(
      'name',
      this,
    );
    price = _i1.ColumnInt(
      'price',
      this,
    );
    ratings = _i1.ColumnDouble(
      'ratings',
      this,
    );
    brand = _i1.ColumnString(
      'brand',
      this,
    );
    review = _i1.ColumnString(
      'review',
      this,
    );
    size = _i1.ColumnSerializable(
      'size',
      this,
    );
  }

  late final _i1.ColumnString name;

  late final _i1.ColumnInt price;

  late final _i1.ColumnDouble ratings;

  late final _i1.ColumnString brand;

  late final _i1.ColumnString review;

  late final _i1.ColumnSerializable size;

  @override
  List<_i1.Column> get columns => [
        id,
        name,
        price,
        ratings,
        brand,
        review,
        size,
      ];
}

@Deprecated('Use ShoesTable.t instead.')
ShoesTable tShoes = ShoesTable();

class ShoesInclude extends _i1.IncludeObject {
  ShoesInclude._();

  @override
  Map<String, _i1.Include?> get includes => {};

  @override
  _i1.Table get table => Shoes.t;
}

class ShoesIncludeList extends _i1.IncludeList {
  ShoesIncludeList._({
    _i1.WhereExpressionBuilder<ShoesTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderDescending,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(Shoes.t);
  }

  @override
  Map<String, _i1.Include?> get includes => include?.includes ?? {};

  @override
  _i1.Table get table => Shoes.t;
}

class ShoesRepository {
  const ShoesRepository._();

  Future<List<Shoes>> find(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<ShoesTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<ShoesTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<ShoesTable>? orderByList,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.find<Shoes>(
      where: where?.call(Shoes.t),
      orderBy: orderBy?.call(Shoes.t),
      orderByList: orderByList?.call(Shoes.t),
      orderDescending: orderDescending,
      limit: limit,
      offset: offset,
      transaction: transaction,
    );
  }

  Future<Shoes?> findFirstRow(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<ShoesTable>? where,
    int? offset,
    _i1.OrderByBuilder<ShoesTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<ShoesTable>? orderByList,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.findFirstRow<Shoes>(
      where: where?.call(Shoes.t),
      orderBy: orderBy?.call(Shoes.t),
      orderByList: orderByList?.call(Shoes.t),
      orderDescending: orderDescending,
      offset: offset,
      transaction: transaction,
    );
  }

  Future<Shoes?> findById(
    _i1.Session session,
    int id, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.findById<Shoes>(
      id,
      transaction: transaction,
    );
  }

  Future<List<Shoes>> insert(
    _i1.Session session,
    List<Shoes> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.insert<Shoes>(
      rows,
      transaction: transaction,
    );
  }

  Future<Shoes> insertRow(
    _i1.Session session,
    Shoes row, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.insertRow<Shoes>(
      row,
      transaction: transaction,
    );
  }

  Future<List<Shoes>> update(
    _i1.Session session,
    List<Shoes> rows, {
    _i1.ColumnSelections<ShoesTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.update<Shoes>(
      rows,
      columns: columns?.call(Shoes.t),
      transaction: transaction,
    );
  }

  Future<Shoes> updateRow(
    _i1.Session session,
    Shoes row, {
    _i1.ColumnSelections<ShoesTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.updateRow<Shoes>(
      row,
      columns: columns?.call(Shoes.t),
      transaction: transaction,
    );
  }

  Future<List<int>> delete(
    _i1.Session session,
    List<Shoes> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.delete<Shoes>(
      rows,
      transaction: transaction,
    );
  }

  Future<int> deleteRow(
    _i1.Session session,
    Shoes row, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.deleteRow<Shoes>(
      row,
      transaction: transaction,
    );
  }

  Future<List<int>> deleteWhere(
    _i1.Session session, {
    required _i1.WhereExpressionBuilder<ShoesTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.deleteWhere<Shoes>(
      where: where(Shoes.t),
      transaction: transaction,
    );
  }

  Future<int> count(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<ShoesTable>? where,
    int? limit,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.count<Shoes>(
      where: where?.call(Shoes.t),
      limit: limit,
      transaction: transaction,
    );
  }
}
