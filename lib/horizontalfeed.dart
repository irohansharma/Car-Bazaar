import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'detailpage.dart';
import 'uploaddata.dart';

class horizontalfeed extends StatefulWidget {
  String username;
  horizontalfeed(this.username);
  @override
  _horizontalfeedState createState() => _horizontalfeedState(username);
}

class _horizontalfeedState extends State<horizontalfeed> {
String username;
 _horizontalfeedState(this.username);

  Future parseData() async{
    var collectionRef =Firestore.instance;
    QuerySnapshot snap =await collectionRef.collection('car_bazaar').getDocuments();
    return snap.documents;
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
   return Scaffold(

     appBar: AppBar(
       title: Padding(
         //alignment: Alignment.center,
           padding:EdgeInsets.fromLTRB(55, 0, 0, 0),
           child: Text("Welcome ${username}",style: TextStyle(color: Colors.black54,fontSize: 16),)),
       backgroundColor: Colors.white,
       elevation: 2.0,
       iconTheme: IconThemeData(color:Colors.black54),
     ),
      body:
          FutureBuilder(
            future: parseData(),
            builder:(_,snapshot){
             // print(snapshot.data[0].data['sellername']);
             if(snapshot.connectionState == ConnectionState.waiting){
                return Center(
                  child: Container(
                    //height:750,
                    width: double.infinity,
                    decoration: BoxDecoration(
                        image: DecorationImage(image: NetworkImage("https://mumandyou.com/skin/frontend/fengo/default/images/loading_holder.gif"))
                    ),
                  ),
                );
              }

              else {

                return ListView.builder(
                  itemCount:snapshot.data.length,
                  itemBuilder: (_,index){
    print(snapshot.data[0].data['sellername']);
 //if(index<1){
   return Hstructure(snapshot.data[index].data['sellername'],snapshot.data[index].data['carname'],
    snapshot.data[index].data['carprice'],
    snapshot.data[index].data['cardetails'], snapshot.data[index].data['contact'],
    snapshot.data[index].data['image1'],
    snapshot.data[index].data['image2'],
    snapshot.data[index].data['image3'],
    snapshot.data[index].data['image4'],
    );
   // }
                  },


                );
              }

            }
          ),
     floatingActionButton: FloatingActionButton(
       onPressed: (){
         Navigator.push(context, MaterialPageRoute(builder: (context)=>formfill()));
       },
       tooltip: 'Add',
       child: Icon(Icons.add),
           backgroundColor: Colors.deepOrangeAccent,
     ),
    // backgroundColor: Colors.amberAccent,

   );

  }

}

class Hstructure extends StatelessWidget {
  String sellername ,carname,carprice,cardetails,contact,image1,image2,image3,image4;
  Hstructure(this.sellername ,this.carname,this.carprice,this.cardetails,this.contact,this.image1,this.image2,this.image3,this.image4);
  @override
  Widget build(BuildContext context) {

    List<String> images =[
    image1,image2,image3,image4
    ];

    return  SingleChildScrollView(
      physics: BouncingScrollPhysics(),
      child: InkWell(
        onTap:() {
          Navigator.push(context, MaterialPageRoute(builder:
              (context)=>DetailPage(sellername ,carname,carprice,cardetails,contact,images)));
        },

        child: Padding(
          padding: const EdgeInsets.fromLTRB(12,10,12,5),
          child: Card(
            elevation: 4,
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                children: <Widget>[
                  Hero(
                    tag: image1,
                    child: Container(
                      height: 183,
                      width: 350,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: NetworkImage(image1),
                              fit: BoxFit.cover
                          ),

                          borderRadius: BorderRadius.circular(5)
                      ),
                    ),
                  ),
                 // SizedBox(width: double.tryParse(carname)),
                  Column(
                    children: <Widget>[
                      Container(
                        height: double.tryParse(carname),
                        width: 180,
                        //double.tryParse(carname),
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(16.0,15,0,0),
                          child: Text(carname,
                            textAlign: TextAlign.center,
                            style:TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 17,color: Colors.black87
                            ) ,),
                        ),
                      ),

                      Row(
                        children: <Widget>[
                          Center(
                            child: Padding(
                              padding: const EdgeInsets.fromLTRB(5.0,8,0,0),
                              child: Text(carprice,
                                style:TextStyle(
                                    fontWeight: FontWeight.w700,
                                    fontSize: 16,color: Colors.green
                                ) ,),
                            ),
                          ),
                          Padding(
                              padding: const EdgeInsets.fromLTRB(169.0,8,0,12),
                            //alignment: Alignment.,
                              child: Container(
                                height: 10,
                                width: 10,
                                child: InkWell(child: new Icon(Icons.bookmark_border,color: Colors.redAccent,size: 25,)),
                              )
                          ),
                        ],
                      ),
                     /* Padding(
                        padding: const EdgeInsets.fromLTRB(56.0,8,0,0),
                        child: Container(
                          height: 10,
                          width: 10,
                          child: new Icon(Icons.bookmark,color: Colors.black,size: 30,),
                        )
                      ),*/

                    ],
                  )
                ],
              ),
            ),
           // color: Colors.white70,

          ),
        ),
      ),
    );

  }
}

