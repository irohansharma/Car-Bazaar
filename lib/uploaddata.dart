import 'package:flutter/material.dart';
class formfill extends StatefulWidget {
  @override
  _formfillState createState() => _formfillState();
}

class _formfillState extends State<formfill> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Padding(
            padding: EdgeInsets.fromLTRB(55, 0, 0, 0),
            child: Text("Fill Details",style: TextStyle(color: Colors.black54,fontSize: 16),)),
        backgroundColor: Colors.white,
        elevation: 2.0,
        iconTheme: IconThemeData(color:Colors.black54),
      ),
      body:  SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Padding(
          padding: const EdgeInsets.all(18.0),
          child: Form(
            //key: _key,
            //autovalidate: _validate,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
                    //controller: controller,
                    decoration: InputDecoration(
                      labelText: "Name", hintText: "Enter name"
                      , border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20.0)
                    ),),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
                    //controller: controller5,
                    decoration: InputDecoration(
                      labelText: "Carname", hintText: "Car name with model year"
                      , border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20.0)
                    ),),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
                    //controller: controller6,
                   // keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      labelText: "Price", hintText: " Enter Price"
                      , border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20.0)
                    ),),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
                    //controller: controller1,
                    maxLength: 75,
                    decoration: InputDecoration(
                      labelText: "Car Description", hintText: "Km done & Fuel type",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20.0)
                      ),),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
                   // controller: controller3,
                    decoration: InputDecoration(
                      labelText: "Image1", hintText: "Url for image 1",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20.0)
                      ),),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
                    // controller: controller3,
                    decoration: InputDecoration(
                      labelText: "Image2", hintText: "Url for image 2",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20.0)
                      ),),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
                    // controller: controller3,
                    decoration: InputDecoration(
                      labelText: "Image3", hintText: "Url for image 3",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20.0)
                      ),),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
                    // controller: controller3,
                    decoration: InputDecoration(
                      labelText: "Image4", hintText: "Url for image 4",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20.0)
                      ),),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
                    //controller: controller2,
                    decoration: InputDecoration(
                      labelText: "Contact", hintText: "Enter contact no.",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20.0)
                      ),),
                    //keyboardType: TextInputType.phone,
                    maxLength: 10,
                  ),
                ),

                SizedBox(
                  height: 10,
                ),
               // button(),
                Container(
                  height: 35,
                  padding: EdgeInsets.fromLTRB(16,0, 16,4),
                  child: new RaisedButton(
                      child: new Text(' Submit '),
                      color: Colors.deepOrangeAccent,
                      splashColor: Colors.white,
                      highlightColor: Colors.white30,
                      onPressed:()
                      {}
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
