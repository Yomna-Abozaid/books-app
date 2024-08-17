import 'package:sqflite/sqflite.dart';
  class DbHelper{
  Database? database;


  initDatabase() async{
    Future<String> path= join(await getDatabasesPath(), 'books.db');
database= await openDatabase(path);
  }




}




