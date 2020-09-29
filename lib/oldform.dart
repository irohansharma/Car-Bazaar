import 'package:flutter/material.dart';
import 'package:rflutter_alert/rflutter_alert.dart';
import 'model.dart';

//////////////////////////////////////////////////////////  NO USE updated on 23 feb 2020
class Formexample extends StatefulWidget {
  @override
  _FormState createState() => _FormState();
}

class _FormState extends State<Formexample> {
  final _formKey = GlobalKey<FormState>();
  final _user = User();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("Forms")),
        elevation: 2.0,
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.symmetric(vertical: 16, horizontal: 16),
          child: Builder(builder: (context) {
            return Form(
              key: _formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  TextFormField(
                    decoration: InputDecoration(labelText: "Enter First Name"),
                    validator: (value) {
                      if (value.isEmpty) {
                        return "User name is required";
                      }

                    },
                    onSaved: (val) {
                      setState(() {
                        _user.FristName = val;
                      });
                    },
                  ),
                  TextFormField(
                    decoration: InputDecoration(labelText: "Enter First Name"),
                    validator: (value) {
                      if (value.isEmpty) {
                        return "User name is required";
                      }
                      ;
                    },
                    onSaved: (val) {
                      setState(() {
                        _user.LastName = val;
                      });
                    },
                  ),
                  Container(
                    padding: const EdgeInsets.fromLTRB(0, 50, 0, 20),
                    child: Text('Do you want learn from'),
                  ),
                  SwitchListTile(
                      value: _user.trainer,
                      title: Text("Divyam Joshi"),
                      onChanged: (bool val) {
                        setState(() {
                          _user.trainer = val;
                        });
                      }),
                  Container(
                    padding: const EdgeInsets.fromLTRB(0, 50, 0, 20),
                    child: Text('Technology'),
                  ),
                  CheckboxListTile(
                      title: Text("Flutter"),
                      value: _user.tech[User.Flutter],
                      onChanged: (val) {
                        setState(() {
                          _user.tech[User.Flutter] = val;
                        });
                      }),
                  CheckboxListTile(
                      title: Text("Android"),
                      value: _user.tech[User.Android],
                      onChanged: (val) {
                        setState(() {
                          _user.tech[User.Android] = val;
                        });
                      }),
                  CheckboxListTile(
                      title: Text("Ios"),
                      value: _user.tech[User.Ios],
                      onChanged: (val) {
                        setState(() {
                          _user.tech[User.Ios] = val;
                        });
                      }),
                  Container(
                    padding: EdgeInsets.symmetric(vertical: 16, horizontal: 16),
                    child: RaisedButton(
                        child: Text("Submit"),
                        onPressed: () {
                          final form = _formKey.currentState;
                          if (form.validate()) {
                            form.save();
                            _user.save();
                            Alert(
                                type: AlertType.success,
                                context: context,
                                title: "Your info",
                                desc:
                                "Username:${_user.FristName} ${_user.LastName}\n",
                                buttons: [
                                  DialogButton(
                                    child: Text(
                                      "Ok",
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 20),
                                    ),
                                    onPressed: () {
                                      Navigator.pop(context);
                                    },
                                    width: 50,
                                  )
                                ]).show();
                          }
                        }),
                  )
                ],
              ),
            );
          }),
        ),
      ),
    );
  }
}
