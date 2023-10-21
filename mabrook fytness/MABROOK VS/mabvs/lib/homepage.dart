import 'package:flutter/material.dart';

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('Mabrook Fytness')),
        body: Column(children: <Widget>[
          Expanded(child: PostList(this.posts)),
          TextInputWidget(this.newPost)
        ],));
  }
}

class TextInputWidget extends StatefulWidget {
  @override
  State<TextInputWidget> createState() => _TextInputWidget();
}

class _TextInputWidget extends State<TextInputWidget> {
  final controller = TextEditingController();

  String text = "";

@override
  void dispose(){
    super.dispose();
    controller.dispose();

  }

  void changeText(text){
    setState(() {
    this.text = text;

  });
  }
  @override
  Widget build(BuildContext context) {
    return column(
      children:<Widget>[
        TextField(
      controller: this.controller,
      decoration: InputDecoration(
          prefixIcon: Icon(Icons.message), labelText: "Type a message:"),

     onChanged: (text)=>this.changeText(text),
     
      ),


 Text(this.text)
 
 
  }




}
