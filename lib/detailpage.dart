import 'package:flutter/material.dart';
import 'horizontalfeed.dart';
import 'imageview.dart';

class DetailPage extends StatefulWidget {
String sellername ,carname,carprice,cardetails,contact;
List<String> images;
  DetailPage(this.sellername ,this.carname,this.carprice,this.cardetails,this.contact,this.images);
  @override
  _DetailPageState createState() => _DetailPageState(sellername ,carname,carprice,cardetails,contact,images);
}

class _DetailPageState extends State<DetailPage> {
  List<String> images;
  String sellername ,carname,carprice,cardetails,contact;

  _DetailPageState(this.sellername ,this.carname,this.carprice,this.cardetails,this.contact,this.images);


  @override


  int i=-1;
  String photoindex;
  int j=0;

  void initState()
  {

    if (i >= 3) {
      i = 0;
      setState(() {
        photoindex = images[i];

      }
      );
    }
    else {
      setState(() {
        i++;
        photoindex =images[i];

        j = 1;
      }
      );
    }
  }
  void prevState()
  {

    if (i <= 0) {
      i = 3;
      setState(() {

        photoindex = images[i];

        j=0;


      }
      );
    }
    else {
      setState(() {

        i--;
        photoindex = images[i];

      }
      );
    }
  }






  Widget build(BuildContext context) {
    // return Container();
    // photoindex = x.imgURL[0];

    return Scaffold(

      body: Column(
        children: <Widget>[
         // Hero(
         //   tag:photoindex,
           // child:
            Container(
              height:300,
              width: double.infinity,
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: NetworkImage(photoindex),
                    fit: BoxFit.contain
                ),
              //   color: Colors.black12,
               //  borderRadius: BorderRadius.circular(25),
                 // border: Border.all(color: Colors.black38)
                boxShadow:  <BoxShadow>[
                  BoxShadow(
                    color: Colors.black38,
                    offset: Offset(0.0, 0.0),
                    blurRadius: 40.0,
                  ),
                ],
              ),

          //    ),

                child: Stack(
                  children: <Widget>[
                    new Positioned(
                      right: 15.0,
                      bottom: 40.0,
                      child: InkWell(
                          onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder:
                                (context)=>imageview(photoindex)));
                          },
                          child: Hero(tag:photoindex,child: Tooltip(child: new Icon(Icons.crop_free,color: Colors.white,size: 30,),message: "View Image",))
                      ),
                    ),
                  ],
                ),

            ),

          Row(
            children: <Widget>[

              Padding(
                 padding: EdgeInsets.fromLTRB(135, 10, 0, 0),
                child:
                InkWell(child: Icon(Icons.arrow_back_ios, ),
                  onTap: (){
                    prevState();
                  },),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(5, 10, 5, 0),
                child: Text("${i+1}/4",style: TextStyle(fontSize:20,color: Colors.green),),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(0, 10, 0, 0),
                child:
                InkWell(child: Icon(Icons.arrow_forward_ios, ),
              onTap: (){
                initState();
              },)

              ),

            ],
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(8, 4, 8, 0),
            child: Container(
              height: 300,
              width: double.infinity,
             // color: Colors.blueAccent,
              decoration: BoxDecoration(
                 borderRadius: BorderRadius.circular(25),
               // color: Colors.black12,
                border: Border.all(color: Colors.black38),

              ),
              child: Column(
                children: <Widget>[

                      Padding(
                        padding: EdgeInsets.fromLTRB(10, 10, 0, 0),
                          child: Text(cardetails,style: TextStyle(color: Colors.black38,fontWeight: FontWeight.w600),)
                      ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(30,8,30,0),
                    child: Container(
                      width: double.infinity,
                      height: 1.25,
                      color: Colors.black38,
                    ),
                  ),
                   Padding(
                     padding: EdgeInsets.only(top:15),
                     child: Column(
                       children: <Widget>[
                         Padding(
                             padding: EdgeInsets.fromLTRB(0, 15, 0, 0),
                             child: Align(
                                 alignment: Alignment.topCenter,
                                 child: Text("Price: ${carprice}",style: TextStyle(color: Colors.black45,fontWeight: FontWeight.w600,fontSize:16),))
                         ),
                         Padding(
                             padding: EdgeInsets.fromLTRB(0, 20, 0, 0),
                             child: Align(
                               alignment: Alignment.topCenter,
                                 child: Text("Owner Name: ${sellername}",style: TextStyle(color: Colors.black45,fontWeight: FontWeight.w600,fontSize:16),))
                         ),
                         Padding(
                             padding: EdgeInsets.fromLTRB(0, 15, 0, 0),
                             child: Align(
                                 alignment: Alignment.topCenter,
                                 child: Text("Contact: ${contact}",style: TextStyle(color: Colors.black45,fontWeight: FontWeight.w600,fontSize:16),))
                         ),
                         Padding(
                           padding: const EdgeInsets.only(top:25.0),
                           child: new SizedBox(
                             width: 180.0,
                             height: 40.0,
                             child: new RaisedButton(
                               child: new Text(' Message '),
                                 color: Colors.deepOrangeAccent,
                                 splashColor: Colors.white,
                                 highlightColor: Colors.white30,
                               onPressed:()
                                 {}
                             ),
                           ),
                        
                         ),

                       ],
                     ),
                   )
                ],
              ),
            ),
          )


        ],
      ),
    );
  }
}

