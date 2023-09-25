import 'package:flutter/material.dart';
import 'package:flutter_todo_app/style.dart';
class ToDoPage extends StatefulWidget {
  const ToDoPage({Key? key}) : super(key: key);

  @override
  State<ToDoPage> createState() => _ToDoPageState();
}

class _ToDoPageState extends State<ToDoPage> {
  List ToDoList =[{"1":"1"},{"2":"2"}];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("To Do App"),),
      body: Container(
        padding: EdgeInsets.all(10),
        child: Column(
          children: [
            Expanded(
                flex: 10,
                child: Row(
                  children: [
                    Expanded(flex: 70, child: TextFormField(decoration: AppInputDecoration("List Item"),)),
                    Expanded(flex:20, child:Padding(padding: EdgeInsets.only(left: 5),child: ElevatedButton(onPressed: (){}, child: Text("Add"),style: AppButtonStyle(),),)),
                  ],
                )
            ),
            Expanded(
                flex: 90,
                child: ListView.builder(
                    itemCount: ToDoList.length,
                    itemBuilder: (context, index){
                      return Card(
                        child: sizeBox50(
                            Row(
                                children: [
                                  Expanded(flex: 80, child: Text("Item")),
                                  Expanded(flex:20,child: TextButton(onPressed: (){}, child: Icon(Icons.delete))),
                                ]

                            )
                        )

                      );
                    })
            ),
          ],
        ),
      ),


    );
  }
}
