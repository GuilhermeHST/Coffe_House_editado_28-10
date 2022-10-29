import 'package:coffee_house/data/bd_helper.dart';
import 'package:coffee_house/domain/cafe.dart';
import 'package:sqflite/sqflite.dart';

class PollyDao{
  Future<List<Cafes>> listarCafes() async{
    DBHelper dbHelper = DBHelper();
    Database db = await dbHelper.initDB();

    String sql = 'SELECT * FROM mes;';
    var result = await db.rawQuery(sql);
    print(sql);
    
    List<Cafes> lista = <Cafes>[];
    for(var json in result){
      print(json);
      Cafes cafe = Cafes.fromJson(json);
      lista.add(cafe);
    }
    
    return lista;
  }
}