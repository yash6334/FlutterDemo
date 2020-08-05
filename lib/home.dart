import 'package:Test3/vidController.dart';
import 'package:flutter/material.dart';
import 'package:Test3/control.dart';
import 'package:video_player/video_player.dart';

mainApp() {
  var mbody_ = Column(
    crossAxisAlignment: CrossAxisAlignment.center,
    children: <Widget>[
      SizedBox(
        height: 60,
      ),
      Container(
        padding: EdgeInsets.only(left: 16, right: 16),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Container(
              height: 40,
              width: 40,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(30),
              ),
              child: IconButton(
                  icon: Icon(
                    Icons.arrow_back,
                    size: 20,
                    color: Colors.grey.shade700,
                  ),
                  onPressed: null),
            ),
            Container(
              height: 40,
              width: 40,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(30),
              ),
              child: IconButton(
                  icon: Icon(
                    Icons.menu,
                    size: 20,
                    color: Colors.grey.shade700,
                  ),
                  onPressed: null),
            ),
          ],
        ),
      ),
      SizedBox(
        height: 40,
      ),
      Container(
        height: 240,
        width: 190,
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.4),
              spreadRadius: 5,
              blurRadius: 7,
              offset: Offset(0, 3), // changes position of shadow
            ),
          ],
          borderRadius: BorderRadius.circular(10),
        ),
        alignment: Alignment.center,
        child: RaisedButton(
          onPressed: init,
          child: Container(
            height: 200,
            width: 150,
            decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.6),
                    spreadRadius: 5,
                    blurRadius: 7,
                    offset: Offset(0, 3), // changes position of shadow
                  ),
                ],
                borderRadius: BorderRadius.circular(5),
                color: Colors.white,
                image: DecorationImage(
                    fit: BoxFit.fill,
                    image: NetworkImage(
                        'https://m.media-amazon.com/images/I/71NcrTkrhtL._SS500_.jpg'))),
          ),
        ),
      ),
      SizedBox(
        height: 15,
      ),
      Text(
        'ZAYN- Good Years',
        style: TextStyle(fontSize: 22, fontFamily: 'MyFont'),
      ),
      Container(
        padding: EdgeInsets.only(left: 100, right: 100, top: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Container(
              height: 40,
              width: 40,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(30),
              ),
              child: IconButton(
                  icon: Icon(
                    Icons.pause,
                    size: 20,
                    color: Colors.grey.shade700,
                  ),
                  onPressed: pauseAudio),
            ),
            Container(
              height: 40,
              width: 40,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(30),
              ),
              child: IconButton(
                  icon: Icon(
                    Icons.play_arrow,
                    size: 20,
                    color: Colors.grey.shade700,
                  ),
                  onPressed: playAudio),
            ),
            Container(
              height: 40,
              width: 40,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(30),
              ),
              child: IconButton(
                  icon: Icon(
                    Icons.stop,
                    size: 20,
                    color: Colors.grey.shade700,
                  ),
                  onPressed: stopAudio),
            ),
          ],
        ),
      ),
      SizedBox(
        height: 70,
      ),
      Container(
        height: 260,
        width: 360,
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.4),
              spreadRadius: 5,
              blurRadius: 7,
              offset: Offset(0, 3), // changes position of shadow
            ),
          ],
          borderRadius: BorderRadius.circular(10),
        ),
        alignment: Alignment.center,
        child: Container(
          height: 240,
          width: 360,
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.6),
                spreadRadius: 5,
                blurRadius: 7,
                offset: Offset(0, 3), // changes position of shadow
              ),
            ],
            borderRadius: BorderRadius.circular(5),
            color: Colors.black,
          ),
          child: ChewieListItem(
            videoPlayerController: VideoPlayerController.network(
                'https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/ElephantsDream.mp4'),
            looping: true,
          ),
        ),
      ),
    ],
  );

  var mhome_ = Scaffold(
    backgroundColor: Colors.blueGrey.shade300,
    body: mbody_,
  );

  return MaterialApp(
    home: mhome_,
    debugShowCheckedModeBanner: false,
  );
}
