import 'package:serverpod/serverpod.dart';

import '../generated/protocol.dart';

class ShoesEndpoint extends Endpoint {
  Future<List<Shoes>> getShoes(Session session, {String? keyword}) async {
    return await Shoes.find(
      session,
      where: (t) =>
          keyword != null ? t.name.like('%$keyword%') : Constant(true),
    );
  }

  Future<bool> addShoes(Session session, Shoes shoes) async {
   await Shoes.insert(session, shoes);
    return true;
  }

    Future<bool> updateShoes(Session session, Shoes shoes) async {
     var result = await Shoes.update(session, shoes);
    return result;
  }

   Future<bool> deleteShoes(Session session, int id) async {
     var result = await Shoes.delete(session, where: (t) => t.id.equals(id),);
    return result == 1;
  }
}
