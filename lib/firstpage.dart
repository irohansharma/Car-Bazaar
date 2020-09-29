import 'package:flutter/material.dart';
import 'usernameform.dart';
import 'webview.dart';


class firstpage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          children: <Widget>[
            Center(
              child: Padding(
                padding: const EdgeInsets.only(top:0.0),
                child: Container(
                  height: 230,

                 // child: Text("Welcome"),
                  child: Stack(
                    children: <Widget>[

                      Container(
                        height: 230,
                        width: double.infinity,
                        decoration: BoxDecoration(
                            image: DecorationImage(image: NetworkImage("https://www.backgroundcheckall.com/wp-content/uploads/2017/12/background-pastel-tumblr.gif"),fit: BoxFit.fill),
                          borderRadius: BorderRadius.circular(14),

                        ),
                      ),
                   Center(
                     child: Container(
                      height: 230,
                      width: 210,
                      decoration: BoxDecoration(
                          image: DecorationImage(image: NetworkImage("https://market.ape-apps.com/logos/1531396365691.png")),
                        boxShadow: <BoxShadow>[
                          BoxShadow(
                            color: Colors.white70,
                            offset: Offset(0.0, 0.0),
                            blurRadius: 100.0,
                          ),
                        ],
                      ),
                       child: Padding(padding:EdgeInsets.fromLTRB(18,80,0,0),child: Center(child: Text("Buy Better Drive Better",style: TextStyle(fontWeight: FontWeight.w300),)),),
                     ),
                   ),
                    ],
                  ),
                ),
              ),
            ),

            form(),
Container(
  height: 250,
  width: double.infinity,
  decoration: BoxDecoration(
    image: DecorationImage(image: NetworkImage("https://media1.giphy.com/media/xTiTnnHTHiapQgvbt6/source.gif"),fit: BoxFit.cover)
  ),


  child: Stack(
    children: <Widget>[
      new Positioned(
        right: 30.0,
        bottom: 0.0,
            child:   Row(
              children: <Widget>[
                Text("About Developer:",style: TextStyle(color: Colors.black),),

                InkWell(
                  onTap: ()
                  {
                    Navigator.push(context, MaterialPageRoute(builder:
                        (context)=>webview(1)));
                  },
                  child: Padding(
                    padding: EdgeInsets.only(left: 12),
                    child: Container(
                      height: 23,
                      width: 23,
                      decoration: BoxDecoration(
                        image: DecorationImage(image: NetworkImage("https://cdn.iconscout.com/icon/free/png-256/github-153-675523.png"
                        ),fit: BoxFit.cover),
                        shape: BoxShape.circle,
                        border: Border.all(color: Colors.green),
                        //  color: Colors.black38
                      ),

                    ),
                  ),
                ),

                InkWell(
                  onTap: ()
                  {
                    Navigator.push(context, MaterialPageRoute(builder:
                        (context)=>webview(2)));
                  },
                  child: Padding(
                    padding: EdgeInsets.only(left: 15),
                    child: Container(
                      height: 23,
                      width: 23,
                      decoration: BoxDecoration(
                        image: DecorationImage(image: NetworkImage("https://cdn4.iconfinder.com/data/icons/social-messaging-ui-color-shapes-2-free/128/social-instagram-new-circle-512.png"
                                                  ),fit: BoxFit.cover),
                        shape: BoxShape.circle,
                        border: Border.all(color: Colors.redAccent),
                      //  color: Colors.black38
                      ),

                    ),
                  ),
                ),
                InkWell(
                  onTap: ()
                  {
                    Navigator.push(context, MaterialPageRoute(builder:
                        (context)=>webview(3)));
                  },
                  child: Padding(
                    padding: EdgeInsets.only(left: 12),
                    child: Container(
                      height: 23,
                      width: 23,
                      decoration: BoxDecoration(
                        image: DecorationImage(image: NetworkImage("https://cdn1.iconfinder.com/data/icons/iconza-circle-social/64/697057-facebook-512.png"
                        ),fit: BoxFit.cover),
                        shape: BoxShape.circle,
                        border: Border.all(color: Colors.blue),
                        //  color: Colors.black38
                      ),

                    ),
                  ),
                )

              ],
            )
      ),
    ],
  ),



)

          ],
        ),
      ),
     //backgroundColor: Colors.white,
    );
  }
}
