import 'package:flutter/material.dart';
import 'package:pinch_zoom_image/pinch_zoom_image.dart';

class imageview extends StatelessWidget {
  String image;
  imageview(this.image);
  @override
  Widget build(BuildContext context) {
    return  Center(
      child: PinchZoomImage(
            image: Image.network(image),
            zoomedBackgroundColor: Color.fromRGBO(240, 240, 240, 1.0),
            hideStatusBarWhileZooming:true,
            onZoomStart: () {
              print('Zoom started');
            },
            onZoomEnd: () {
              print('Zoom finished');
            },

      ),
    );
  }
}


