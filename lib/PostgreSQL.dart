import 'package:postgres/postgres.dart';
import 'dart:async';


class PosSql {
  var connection = PostgreSQLConnection('localhost', 5432, 'PruebaPostgreSQL',username: 'postgres',password: '1234');
  static String host= 'localhost',
                user='postgres',
                password='1234',
                db='PruebaPostgreSQL';
  static int port=5432;

  PosSql();

  Future<PostgreSQLConnection> getConnection1() async{
    var connection = PostgreSQLConnection(host, port, db,username: user,password: password);

    return await connection.open();

  }
  Future<void> Getname() async {
    var connection = PostgreSQLConnection('localhost', 5432, 'PruebaPostgreSQL',username: 'postgres',password: '1234');
    await connection.open();


    List<List<dynamic>> results = await connection.query("SELECT nombre FROM Maquina");

    for (final row in results) {
      var a = row[0];

    }
    print(results);
  }
}
