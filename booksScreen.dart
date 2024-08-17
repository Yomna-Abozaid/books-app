import 'package:flutter/material.dart';
import 'package:untitled31/main.dart';

void main() {
  runApp(const MyApp());
}

class BooksScreen extends StatefulWidget {
  const BooksScreen({super.key});

  @override
  State<BooksScreen> createState() => _BooksScreenState();
}

class _BooksScreenState extends State<BooksScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.blue,
        title: Text('Available Books',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),)
        ,centerTitle: true,),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: ListView.builder(itemBuilder: (context,index){
          return Row(
            children: [
              Container(
                height: 150,width: 130,decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
              ),
                clipBehavior: Clip.antiAliasWithSaveLayer,
                child: Image.network('https://th.bing.com/th/id/OIP.QZREKB0lNgfZ9cR9QIHr-gHaE8?w=259&h=180&c=7&r=0&o=5&dpr=1.5&pid=1.7',
                  fit: BoxFit.fill,),

              )
              ,Column(
                children: [
                 Text('flutter Book',style: TextStyle(
                   color: Colors.black,fontWeight: FontWeight.w500,fontSize: 25,
                 ),
                   maxLines: 2,overflow: TextOverflow.ellipsis,
                 )
          ,Text('Auther: uncle bob ',style: TextStyle(
          color: Colors.black,fontSize: 25,)
                    ,maxLines: 2,overflow: TextOverflow.ellipsis,
                  )
           ],
              )
              ,SizedBox(width: 10,),IconButton(onPressed: (){}, icon: Icon(Icons.delete_forever,size: 38,))
            ],
          );
        }
          ,itemCount: 10,
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          showModalBottomSheet(context: context,isScrollControlled: true
              ,builder: (context)=>Padding(
            padding: const EdgeInsets.all(25.0).copyWith(bottom: MediaQuery.of(context).viewInsets.bottom+24),

          child: Column(mainAxisSize: MainAxisSize.min,
              children: [
                TextField(decoration: InputDecoration(hintText: 'title'),)
                ,TextField(decoration: InputDecoration(hintText: 'auther'),)
                ,TextField(decoration: InputDecoration(hintText: 'ImgUrl'),
                )
                ,SizedBox(height: 25,),TextButton(onPressed: (){},style:TextButton.styleFrom(backgroundColor: Colors.blue,
                    minimumSize: Size(double.infinity,50))
                    ,child: Text('Save',style:
                  TextStyle(color: Colors.white),))
              ],
            ),
          ) );
        },backgroundColor: Colors.blue,child:
        Icon(Icons.add,color: Colors.white,),
      ),
    );
  }
}