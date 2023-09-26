import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
   return MaterialApp(
     home: Scaffold(
       appBar: AppBar(
         title: Text('form validation'),
       ),
       body: MyCustomForm(),
     ),
   );
  }
}

class MyCustomForm  extends StatefulWidget{
  @override
  State<MyCustomForm> createState() => MyCustomFormState();
}

class MyCustomFormState  extends State<MyCustomForm>{
 final formkey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Form(
      key: formkey,
        child:Column(
          children: [
            SizedBox(height: 1),
            Text(' Sign Up Form'),
            Padding(padding: EdgeInsets.all(20),
              child: TextFormField(
                  validator: (value){
                    if(value == null || value.isEmpty){
                      return "please enter your name";
                    }
                    return null;
                  }
              ),

            ),

            Padding(padding: EdgeInsets.all(20),
              child: TextFormField(
                  validator: (value){
                    if(value == null || value.isEmpty){
                      return "please enter your email id";
                    }
                    return null;
                  }
              ),

            ),
            Padding(padding: EdgeInsets.all(20),
              child: TextFormField(
                  validator: (value){
                    if(value == null || value.isEmpty){
                      return "please enter your password";
                    }
                    return null;
                  }
              ),

            ),
            Padding(padding: EdgeInsets.all(20),
              child: TextFormField(
                  validator: (value){
                    if(value == null || value.isEmpty){
                      return "please enter your conform password";
                    }
                    return null;
                  }
              ),

            ),
            ElevatedButton(onPressed: (){
              if(formkey.currentState!.validate()){
                ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("processing data")));

              }
            }, child: Text("Submit")),

          ],
        )
    );
  }
}





