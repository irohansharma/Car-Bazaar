import 'package:flutter/material.dart';
import 'model.dart';
//import 'feed.dart';
import 'horizontalfeed.dart';

class form extends StatefulWidget {
  @override
  _formState createState() => _formState();
}

class _formState extends State<form> {
  final _formKey = GlobalKey<FormState>();
  final _user = User();

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20.0),
      ),
           elevation: 3.5,

      child: Form(
        key: _formKey,
        child: Column(
            //crossAxisAlignment: CrossAxisAlignment.stretch,
         // crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Align(
                alignment:Alignment.topLeft,
                child: Padding(
                  padding: EdgeInsets.fromLTRB(22,10, 0, 0),
                  // alignment:Alignment.topLeft,0000
                  child: Text("Fill Details",style: TextStyle(fontSize: 15,color: Colors.black54),),

                ),
              ),
        Padding(
          padding: const EdgeInsets.fromLTRB(22.0,0,50,15),
          child: TextFormField(
          decoration: InputDecoration(labelText: "Enter First Name",),
          validator: (value) {
            if (value.isEmpty) {
              return "";
            }

          },
          onSaved: (val) {
            setState(() {
              _user.FristName = val;
            });
          },
      ),
        ),
              Container(
             height: 35,
                padding: EdgeInsets.fromLTRB(16,0, 16,4),
                child: RaisedButton(
                    child: Text("Submit"),
                   // color: Colors.,
                    onPressed: () {
                      final form = _formKey.currentState;
                      if (form.validate()) {
                        form.save();
                        _user.save();
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>horizontalfeed(_user.FristName)));
                      }
                    }),
              )





      ],
        )
      ),
    );
  }
}
