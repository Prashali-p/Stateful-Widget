import 'package:flutter/material.dart';


class home extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return _homeState();
  }
}
class _homeState extends State<home> {

  String answer ="";

  @override
  Widget build(BuildContext context) {
  return Scaffold(
    appBar: AppBar(backgroundColor: Colors.lightGreenAccent,),

    body: Container(
      margin: EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: <Widget>[
          ElevatedButton(
              style:ButtonStyle(

              ) ,
              onPressed: (){

                Navigator.push(context, MaterialPageRoute(builder: (content)=>home()));
              }, child: Text('CHANGE ANSWER')),

          Container(
            width: double.infinity,
            height: 50,
            decoration: BoxDecoration(
              border: Border.all(),

            ),

              child: Text('What is Flutter ?',style: TextStyle(fontSize: 20,color: Colors.green),)),

        SizedBox(height: 10,),

          Container(
            child: TextField(
              decoration: InputDecoration(
                labelText: 'write your answer here'

              ),
              onSubmitted: (String userInput){
                setState(() {
                  answer = userInput;

                });

              }
            ),
          ),



          Expanded(
            child: Container(width: double.infinity,
                height: 70,

                decoration: BoxDecoration(
                  border: Border.all(),

                ),child: Text('Enter to know answer : $answer',style: TextStyle(fontSize: 10,color: Colors.green))),
          ),









        ],
      ),
    ),
  );
  }

}