import 'package:cloud_firestore/cloud_firestore.dart';

class User {
  String carname;
  String cardetails;
  String contact;
  String carprice;
  String sellername;
  String image1;
  String image2;
  String image3;
  String image4;

  DocumentReference reference;

  User({this.carname,this.cardetails,this.contact,this.carprice,this.reference,
    this.sellername,this.image1,this.image2,this.image3,this.image4});
  User.fromMap(Map<String, dynamic> map, {this.reference}) {
    carname = map["carname"];
    cardetails=map["cardetails"];
    sellername=map["sellername"];
    contact=map["contact"];
    image1=map["image1"];
    image2=map["image2"];
    image3=map["image3"];
    image4=map["image4"];
    carprice =map["carprice"];
  }

  User.fromSnapshot(DocumentSnapshot snapshot)
      : this.fromMap(snapshot.data, reference: snapshot.reference);

  toJson() {
    return {'carname': carname,'cardetails':cardetails,"sellername":sellername,'image1'
        :image1,'image2'
        :image2,'image3'
        :image3,'image4'
        :image4,'conact':contact,"carprice":carprice};
  }
}